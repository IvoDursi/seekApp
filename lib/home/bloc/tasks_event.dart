import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tasks_repository/model/task.dart';

part 'tasks_event.freezed.dart';

@freezed
class TasksEvent with _$TasksEvent {
  const factory TasksEvent.get() = GetTasks;

  const factory TasksEvent.saveTask(Task task) = SaveTask;

  const factory TasksEvent.removeTask(Task task) = RemoveTask;
}
