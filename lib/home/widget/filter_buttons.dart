import 'package:flutter/material.dart';
import 'package:seek_app/l10n/l10n.dart';
import 'package:tasks_repository/model/task.dart';

class FilterButtons extends StatelessWidget {
  const FilterButtons({
    super.key,
    required this.selectedFilter,
    required this.onFilterChanged,
  });

  final TaskState? selectedFilter;
  final Function(TaskState?) onFilterChanged;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    return Container(
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            FilterChip(
              selectedColor: Colors.green[400],
              checkmarkColor: Colors.white,
              label: Text(
                l10n.all,
                style: TextStyle(
                  color: selectedFilter == null ? Colors.white : Colors.grey,
                ),
              ),
              selected: selectedFilter == null,
              onSelected: (_) {
                onFilterChanged(null);
              },
            ),
            const SizedBox(width: 10),
            FilterChip(
              checkmarkColor: Colors.white,
              label: Text(
                l10n.pending,
                style: TextStyle(
                  color: selectedFilter == TaskState.pending
                      ? Colors.white
                      : Colors.grey,
                ),
              ),
              selectedColor: Colors.green[400],
              selected: selectedFilter == TaskState.pending,
              onSelected: (_) {
                onFilterChanged(TaskState.pending);
              },
            ),
            const SizedBox(width: 10),
            FilterChip(
              checkmarkColor: Colors.white,
              label: Text(
                l10n.completed,
                style: TextStyle(
                  color: selectedFilter == TaskState.complete
                      ? Colors.white
                      : Colors.grey,
                ),
              ),
              selectedColor: Colors.green[400],
              selected: selectedFilter == TaskState.complete,
              onSelected: (_) {
                onFilterChanged(TaskState.complete);
              },
            ),
          ],
        ),
      ),
    );
  }
}
