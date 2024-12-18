import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seek_app/home/home.dart';
import 'package:seek_app/home/widget/filter_buttons.dart';
import 'package:seek_app/l10n/l10n.dart';
import 'package:tasks_repository/model/task.dart';

class ConfirmationDialog extends StatelessWidget {
  const ConfirmationDialog({
    super.key,
    required this.task,
  });

  final Task task;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Dialog(
      child: Container(
        height: 200,
        width: double.maxFinite,
        padding: EdgeInsets.all(30),
        child: Column(
          children: [
            RichText(
              text: TextSpan(
                text: l10n.deleteConfirmation,
                style: TextStyle(
                  color: Colors.black,
                  fontSize: 22,
                ),
                children: [
                  TextSpan(
                    text: task.title,
                    style: TextStyle(
                      fontSize: 22,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  TextSpan(
                    text: '?',
                    style: TextStyle(
                      fontSize: 22,
                    ),
                  ),
                ],
              ),
            ),
            Spacer(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                TextButton(
                  child: Text(
                    l10n.confirm,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.green[800],
                    ),
                  ),
                  onPressed: () {
                    context.read<TasksBloc>().add(
                          TasksEvent.removeTask(
                            task.copyWith(state: TaskState.complete),
                          ),
                        );
                    Navigator.pop(context);
                  },
                ),
                SizedBox(
                  width: 10,
                ),
                TextButton(
                  child: Text(
                    l10n.cancel,
                    style: TextStyle(
                      fontSize: 20,
                      color: Colors.grey,
                    ),
                  ),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
