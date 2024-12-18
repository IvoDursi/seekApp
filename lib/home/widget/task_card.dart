import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seek_app/home/home.dart';
import 'package:seek_app/home/widget/confirmation_dialog.dart';
import 'package:seek_app/l10n/l10n.dart';
import 'package:tasks_repository/model/task.dart';

class TaskCard extends StatelessWidget {
  const TaskCard({
    required this.task,
    super.key,
  });

  final Task task;

  @override
  Widget build(BuildContext context) {
    return FadeInLeft(
      child: Card(
        color: Colors.white,
        margin: const EdgeInsets.symmetric(
          horizontal: 10,
          vertical: 5,
        ),
        child: Container(
          padding: const EdgeInsets.all(15),
          child: Row(
            children: [
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    task.title,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  if (task.description != null)
                    Text(
                      task.description!,
                      style: const TextStyle(fontSize: 16),
                    ),
                  Text(
                    task.date,
                    style: const TextStyle(
                      fontSize: 20,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  Row(
                    children: [
                      if (task.state == TaskState.pending)
                        TextButton(
                          onPressed: () {
                            context.read<TasksBloc>().add(
                                  TasksEvent.saveTask(
                                    task.copyWith(state: TaskState.complete),
                                  ),
                                );
                          },
                          child: Text(
                            context.l10n.complete,
                            style: TextStyle(
                                fontSize: 18,
                                color: Colors.green,
                                fontWeight: FontWeight.bold),
                          ),
                        ),
                      InkWell(
                        onTap: () {
                          showDialog(
                            context: context,
                            builder: (context) => ConfirmationDialog(
                              task: task,
                            ),
                          );
                        },
                        child: Icon(
                          Icons.delete,
                          color: Colors.red[200],
                        ),
                      ),
                    ],
                  ),
                ],
              ),
              Spacer(),
              TaskStateIndicator(
                taskState: task.state,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
