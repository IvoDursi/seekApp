import 'dart:async';

import 'package:dartz/dartz.dart' as d;
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:seek_app/home/bloc/tasks_event.dart';
import 'package:seek_app/home/bloc/tasks_state.dart';
import 'package:tasks_repository/model/task.dart';
import 'package:tasks_repository/tasks_repository.dart';

class TasksBloc extends Bloc<TasksEvent, TasksState> {
  TasksBloc({
    required this.tasksRepository,
  }) : super(const TasksState.initial()) {
    on<GetTasks>(_onGetTasks);
    on<SaveTask>(_onSaveTask);
    on<RemoveTask>(_onRemoveTask);
  }

  final TasksRepository tasksRepository;

  Future<void> _onGetTasks(
    GetTasks event,
    Emitter<TasksState> emit,
  ) async {
    final tasksEither = await tasksRepository.getTasks();

    if (tasksEither.isLeft()) {
      emit(const TasksState.failed(error: 'No se pudieron obtener las tareas'));
      return;
    }

    final tasks = (tasksEither as d.Right<void, List<Task>>).value;
    emit(TasksState.loaded(tasks: tasks));
  }

  Future<void> _onSaveTask(
    SaveTask event,
    Emitter<TasksState> emit,
  ) async {
    final tasksEither = await tasksRepository.upsertTask(task: event.task);

    if (tasksEither.isLeft()) {
      emit(const TasksState.failed(error: 'No se pudo guardar la tarea'));
      return;
    }

    final tasks = (tasksEither as d.Right<void, List<Task?>>).value;
    emit(TasksState.loaded(tasks: tasks));
  }

  Future<void> _onRemoveTask(
    RemoveTask event,
    Emitter<TasksState> emit,
  ) async {
    final tasksEither = await tasksRepository.deleteTask(task: event.task);

    if (tasksEither.isLeft()) {
      emit(const TasksState.failed(error: 'No se pudo eliminar la tarea'));
      return;
    }

    final tasks = (tasksEither as d.Right<void, List<Task?>>).value;
    emit(TasksState.loaded(tasks: tasks));
  }
}
