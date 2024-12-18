import 'package:animate_do/animate_do.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seek_app/home/home.dart';
import 'package:tasks_repository/model/task.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  TaskState? selectedFilter;

  @override
  void initState() {
    context.read<TasksBloc>().add(const TasksEvent.get());
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Center(child: Text('Seek App')),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          final task = await showDialog<Task>(
            context: context,
            builder: (context) => FadeInUpBig(
              duration: Duration(milliseconds: 500),
              child: const Dialog(
                child: CreateTaskDialog(),
              ),
            ),
          );

          if (task != null) {
            context.read<TasksBloc>().add(
                  TasksEvent.saveTask(
                    task,
                  ),
                );
          }
        },
        child: const Icon(
          Icons.add,
          color: Colors.white,
        ),
      ),
      body: Column(
        children: [
          FilterButtons(
            selectedFilter: selectedFilter,
            onFilterChanged: (filter) {
              setState(() {
                selectedFilter = filter;
              });
            },
          ),
          Expanded(
            child: TasksBuilder(
              selectedFilter: selectedFilter,
            ),
          ),
        ],
      ),
    );
  }
}
