import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:tasks_repository/model/task.dart';

part 'tasks_state.freezed.dart';

@freezed
class TasksState with _$TasksState {
  const factory TasksState.initial() = Initial;

  const factory TasksState.loading() = Loading;

  const factory TasksState.loaded({
    required List<Task?> tasks,
  }) = Loaded;

  const factory TasksState.failed({
    required String error,
  }) = Failed;
}
