import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seek_app/app/utils/task_state_extension.dart';
import 'package:seek_app/home/home.dart';
import 'package:seek_app/l10n/l10n.dart';
import 'package:tasks_repository/model/task.dart';

class TasksBuilder extends StatelessWidget {
  const TasksBuilder({
    required this.selectedFilter,
    super.key,
  });
  final TaskState? selectedFilter;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;

    return BlocBuilder<TasksBloc, TasksState>(
      builder: (context, state) {
        return state.maybeWhen(
          orElse: () => const Center(
            child: CircularProgressIndicator(),
          ),
          loaded: (tasks) {
            final nonNullTasks =
                tasks.where((task) => task != null).cast<Task>().toList();

            final filteredTasks = _applyFilter(nonNullTasks);
            if (filteredTasks.isEmpty) {
              return Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Opacity(
                    opacity: 0.25,
                    child: Image.asset(
                      'assets/blank-file.png',
                      scale: 3,
                    ),
                  ),
                  SizedBox(
                    height: 40,
                  ),
                  Text(
                    selectedFilter != null
                        ? selectedFilter!.getEmptyMessage(context)
                        : l10n.emptyTasks,
                    style: TextStyle(
                      fontSize: 22,
                      color: Colors.grey,
                    ),
                  ),
                  SizedBox(
                    height: 120,
                  ),
                ],
              );
            }
            return ListView.builder(
              itemCount: filteredTasks.length,
              itemBuilder: (context, index) => TaskCard(
                task: filteredTasks[index],
              ),
            );
          },
        );
      },
    );
  }

  List<Task> _applyFilter(List<Task> tasks) {
    if (selectedFilter == null) {
      return tasks;
    }
    return tasks.where((task) => task.state == selectedFilter).toList();
  }
}
