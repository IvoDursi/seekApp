import 'package:flutter/material.dart';
import 'package:seek_app/app/utils/task_state_extension.dart';
import 'package:tasks_repository/model/task.dart';

class TaskStateIndicator extends StatelessWidget {
  const TaskStateIndicator({
    required this.taskState,
    super.key,
  });

  final TaskState taskState;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.all(10),
      child: taskState.getIcon(),
    );
  }
}
