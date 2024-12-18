import 'package:flutter_test/flutter_test.dart';
import 'package:dartz/dartz.dart' as d;
import 'package:local_storage_service/local_storage_service.dart';
import 'package:mocktail/mocktail.dart';
import 'package:tasks_repository/model/task.dart';
import 'package:tasks_repository/tasks_repository.dart';

class MockLocalStorageService extends Mock implements LocalStorageService {}

void main() {
  late MockLocalStorageService mockLocalStorageService;
  late TasksRepository tasksRepository;

  setUp(() {
    mockLocalStorageService = MockLocalStorageService();
    tasksRepository = TasksRepository(mockLocalStorageService);
  });

  group('TasksRepository Tests', () {
    test('should return an empty list of tasks when no tasks are stored',
        () async {
      when(() => mockLocalStorageService.get<List<Task>>(
            key: any(named: 'key'),
            fromJson: any(named: 'fromJson'),
          )).thenReturn(d.Right<void, List<Task>?>(null));

      final result = await tasksRepository.getTasks();

      expect(result.isRight(), true);
      result.fold(
        (l) => fail('Expected a list of tasks, but got failure'),
        (tasks) {
          expect(tasks, isEmpty);
        },
      );
    });

    test('should return a list of tasks when tasks are stored', () async {
      final mockTasks = [
        Task(
            title: 'Task 1',
            description: 'Description 1',
            state: TaskState.pending,
            date: ''),
        Task(
            title: 'Task 2',
            description: 'Description 2',
            state: TaskState.complete,
            date: ''),
      ];

      when(() => mockLocalStorageService.get<List<Task>>(
            key: any(named: 'key'),
            fromJson: any(named: 'fromJson'),
          )).thenReturn(d.Right(mockTasks));

      final result = await tasksRepository.getTasks();

      expect(result.isRight(), true);
      result.fold(
        (l) => fail('Expected a list of tasks, but got failure'),
        (tasks) {
          expect(tasks, isA<List<Task>>());
          expect(tasks.length, mockTasks.length);
        },
      );
    });

    test(
        'should add a new task when upsertTask is called and task does not exist',
        () async {
      final newTask = Task(
        title: 'Task 1',
        description: 'Description 1',
        state: TaskState.pending,
        date: '',
      );

      when(() => mockLocalStorageService.get<List<Task>>(
            key: any(named: 'key'),
            fromJson: any(named: 'fromJson'),
          )).thenReturn(d.Right<void, List<Task>?>(null));

      when(() => mockLocalStorageService.save(
                key: any(named: 'key'),
                value: any(named: 'value'),
              ))
          .thenAnswer(
              (_) async => Future.value(const d.Right<void, void>(null)));

      final result = await tasksRepository.upsertTask(task: newTask);

      expect(result.isRight(), true);
      result.fold(
        (l) => fail('Expected a list of tasks, but got failure'),
        (tasks) {
          expect(tasks, isNotEmpty);
          expect(tasks.first?.title, equals('Task 1'));
        },
      );
    });

    test('should fail if saving tasks fails', () async {
      final newTask = Task(
        title: 'Task 1',
        description: 'Description 1',
        state: TaskState.pending,
        date: '',
      );

      when(() => mockLocalStorageService.get<List<Task>>(
            key: any(named: 'key'),
            fromJson: any(named: 'fromJson'),
          )).thenReturn(d.Right<void, List<Task>?>(null));

      when(() => mockLocalStorageService.save(
            key: any(named: 'key'),
            value: any(named: 'value'),
          )).thenAnswer((_) async => Future.value(const d.Left(null)));

      final result = await tasksRepository.upsertTask(task: newTask);

      expect(result.isLeft(), true);
    });
  });
}
