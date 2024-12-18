import 'package:flutter/material.dart';
import 'package:seek_app/l10n/l10n.dart';
import 'package:tasks_repository/model/task.dart';

extension TaskStateExtension on TaskState {
  Icon getIcon() {
    switch (this) {
      case TaskState.complete:
        return Icon(
          Icons.check,
          color: Colors.green,
        );
      case TaskState.pending:
        return Icon(
          Icons.pending_actions,
          color: Colors.grey,
        );
    }
  }

  String getEmptyMessage(BuildContext context) {
    final l10n = context.l10n;
    switch (this) {
      case TaskState.complete:
        return l10n.emptyCompletedTasks;
      case TaskState.pending:
        return l10n.emptyPendingTasks;
    }
  }
}
