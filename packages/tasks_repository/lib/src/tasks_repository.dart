import 'package:dartz/dartz.dart' as d;
import 'package:local_storage_service/local_storage_service.dart';
import 'package:local_storage_service/resources/keys.dart';
import 'package:tasks_repository/model/task.dart';

class TasksRepository {
  TasksRepository(this.localStorageService);

  final LocalStorageService localStorageService;

  Future<d.Either<void, List<Task>>> getTasks() async {
    final tasksEither = await localStorageService.get(
      key: StorageKeys.tasksKey,
      fromJson: (Map<String, dynamic> json) {
        final tasksJson = json['tasks'] as List<dynamic>;

        final List<Task> tasks =
            tasksJson.map((e) => e).map((e) => Task.fromJson(e)).toList();

        return tasks;
      },
    );

    return tasksEither.fold(
      (failure) => d.Right([]),
      (images) => d.Right(images ?? []),
    );
  }

  Future<d.Either<void, List<Task?>>> upsertTask({
    required Task task,
  }) async {
    final tasksEither = await localStorageService.get(
      key: StorageKeys.tasksKey,
      fromJson: (Map<String, dynamic> json) {
        final tasksJson = json['tasks'] as List<dynamic>;
        final List<Task> tasks = tasksJson
            .map((e) => Task.fromJson(e as Map<String, dynamic>))
            .toList();
        return tasks;
      },
    );

    List<Task?> tasks = [];

    if (tasksEither.isRight()) {
      tasks = (tasksEither as d.Right<void, List<Task>?>).value ?? [];
    }

    final index = tasks.indexWhere(
        (t) => t?.title == task.title && t?.description == task.description);

    if (index != -1) {
      tasks[index] = task;
    } else {
      tasks.add(task);
    }

    final saveResult = await localStorageService.save(
      key: StorageKeys.tasksKey,
      value: {
        'tasks': tasks,
      },
    );

    return saveResult.fold(
      (failure) => d.Left(failure),
      (_) => d.Right(tasks),
    );
  }

  Future<d.Either<void, List<Task?>>> deleteTask({
    required Task task,
  }) async {
    final tasksEither = await localStorageService.get(
      key: StorageKeys.tasksKey,
      fromJson: (Map<String, dynamic> json) {
        final tasksJson = json['tasks'] as List<dynamic>;
        final List<Task> tasks = tasksJson
            .map((e) => Task.fromJson(e as Map<String, dynamic>))
            .toList();
        return tasks;
      },
    );

    List<Task?> tasks = [];

    if (tasksEither.isRight()) {
      tasks = (tasksEither as d.Right<void, List<Task>?>).value ?? [];
    }

    tasks.removeWhere(
        (t) => t?.title == task.title && t?.description == task.description);

    final saveResult = await localStorageService.save(
      key: StorageKeys.tasksKey,
      value: {
        'tasks': tasks,
      },
    );

    return saveResult.fold(
      (failure) => d.Left(failure),
      (_) => d.Right(tasks),
    );
  }
}
