// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'tasks_event.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#adding-getters-and-methods-to-our-models');

/// @nodoc
mixin _$TasksEvent {
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() get,
    required TResult Function(Task task) saveTask,
    required TResult Function(Task task) removeTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? get,
    TResult? Function(Task task)? saveTask,
    TResult? Function(Task task)? removeTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? get,
    TResult Function(Task task)? saveTask,
    TResult Function(Task task)? removeTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTasks value) get,
    required TResult Function(SaveTask value) saveTask,
    required TResult Function(RemoveTask value) removeTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTasks value)? get,
    TResult? Function(SaveTask value)? saveTask,
    TResult? Function(RemoveTask value)? removeTask,
  }) =>
      throw _privateConstructorUsedError;
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTasks value)? get,
    TResult Function(SaveTask value)? saveTask,
    TResult Function(RemoveTask value)? removeTask,
    required TResult orElse(),
  }) =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TasksEventCopyWith<$Res> {
  factory $TasksEventCopyWith(
          TasksEvent value, $Res Function(TasksEvent) then) =
      _$TasksEventCopyWithImpl<$Res, TasksEvent>;
}

/// @nodoc
class _$TasksEventCopyWithImpl<$Res, $Val extends TasksEvent>
    implements $TasksEventCopyWith<$Res> {
  _$TasksEventCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  /// Create a copy of TasksEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc
abstract class _$$GetTasksImplCopyWith<$Res> {
  factory _$$GetTasksImplCopyWith(
          _$GetTasksImpl value, $Res Function(_$GetTasksImpl) then) =
      __$$GetTasksImplCopyWithImpl<$Res>;
}

/// @nodoc
class __$$GetTasksImplCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res, _$GetTasksImpl>
    implements _$$GetTasksImplCopyWith<$Res> {
  __$$GetTasksImplCopyWithImpl(
      _$GetTasksImpl _value, $Res Function(_$GetTasksImpl) _then)
      : super(_value, _then);

  /// Create a copy of TasksEvent
  /// with the given fields replaced by the non-null parameter values.
}

/// @nodoc

class _$GetTasksImpl implements GetTasks {
  const _$GetTasksImpl();

  @override
  String toString() {
    return 'TasksEvent.get()';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType && other is _$GetTasksImpl);
  }

  @override
  int get hashCode => runtimeType.hashCode;

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() get,
    required TResult Function(Task task) saveTask,
    required TResult Function(Task task) removeTask,
  }) {
    return get();
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? get,
    TResult? Function(Task task)? saveTask,
    TResult? Function(Task task)? removeTask,
  }) {
    return get?.call();
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? get,
    TResult Function(Task task)? saveTask,
    TResult Function(Task task)? removeTask,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get();
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTasks value) get,
    required TResult Function(SaveTask value) saveTask,
    required TResult Function(RemoveTask value) removeTask,
  }) {
    return get(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTasks value)? get,
    TResult? Function(SaveTask value)? saveTask,
    TResult? Function(RemoveTask value)? removeTask,
  }) {
    return get?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTasks value)? get,
    TResult Function(SaveTask value)? saveTask,
    TResult Function(RemoveTask value)? removeTask,
    required TResult orElse(),
  }) {
    if (get != null) {
      return get(this);
    }
    return orElse();
  }
}

abstract class GetTasks implements TasksEvent {
  const factory GetTasks() = _$GetTasksImpl;
}

/// @nodoc
abstract class _$$SaveTaskImplCopyWith<$Res> {
  factory _$$SaveTaskImplCopyWith(
          _$SaveTaskImpl value, $Res Function(_$SaveTaskImpl) then) =
      __$$SaveTaskImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Task task});

  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class __$$SaveTaskImplCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res, _$SaveTaskImpl>
    implements _$$SaveTaskImplCopyWith<$Res> {
  __$$SaveTaskImplCopyWithImpl(
      _$SaveTaskImpl _value, $Res Function(_$SaveTaskImpl) _then)
      : super(_value, _then);

  /// Create a copy of TasksEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$SaveTaskImpl(
      null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
    ));
  }

  /// Create a copy of TasksEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TaskCopyWith<$Res> get task {
    return $TaskCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value));
    });
  }
}

/// @nodoc

class _$SaveTaskImpl implements SaveTask {
  const _$SaveTaskImpl(this.task);

  @override
  final Task task;

  @override
  String toString() {
    return 'TasksEvent.saveTask(task: $task)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$SaveTaskImpl &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  /// Create a copy of TasksEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$SaveTaskImplCopyWith<_$SaveTaskImpl> get copyWith =>
      __$$SaveTaskImplCopyWithImpl<_$SaveTaskImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() get,
    required TResult Function(Task task) saveTask,
    required TResult Function(Task task) removeTask,
  }) {
    return saveTask(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? get,
    TResult? Function(Task task)? saveTask,
    TResult? Function(Task task)? removeTask,
  }) {
    return saveTask?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? get,
    TResult Function(Task task)? saveTask,
    TResult Function(Task task)? removeTask,
    required TResult orElse(),
  }) {
    if (saveTask != null) {
      return saveTask(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTasks value) get,
    required TResult Function(SaveTask value) saveTask,
    required TResult Function(RemoveTask value) removeTask,
  }) {
    return saveTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTasks value)? get,
    TResult? Function(SaveTask value)? saveTask,
    TResult? Function(RemoveTask value)? removeTask,
  }) {
    return saveTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTasks value)? get,
    TResult Function(SaveTask value)? saveTask,
    TResult Function(RemoveTask value)? removeTask,
    required TResult orElse(),
  }) {
    if (saveTask != null) {
      return saveTask(this);
    }
    return orElse();
  }
}

abstract class SaveTask implements TasksEvent {
  const factory SaveTask(final Task task) = _$SaveTaskImpl;

  Task get task;

  /// Create a copy of TasksEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$SaveTaskImplCopyWith<_$SaveTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class _$$RemoveTaskImplCopyWith<$Res> {
  factory _$$RemoveTaskImplCopyWith(
          _$RemoveTaskImpl value, $Res Function(_$RemoveTaskImpl) then) =
      __$$RemoveTaskImplCopyWithImpl<$Res>;
  @useResult
  $Res call({Task task});

  $TaskCopyWith<$Res> get task;
}

/// @nodoc
class __$$RemoveTaskImplCopyWithImpl<$Res>
    extends _$TasksEventCopyWithImpl<$Res, _$RemoveTaskImpl>
    implements _$$RemoveTaskImplCopyWith<$Res> {
  __$$RemoveTaskImplCopyWithImpl(
      _$RemoveTaskImpl _value, $Res Function(_$RemoveTaskImpl) _then)
      : super(_value, _then);

  /// Create a copy of TasksEvent
  /// with the given fields replaced by the non-null parameter values.
  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? task = null,
  }) {
    return _then(_$RemoveTaskImpl(
      null == task
          ? _value.task
          : task // ignore: cast_nullable_to_non_nullable
              as Task,
    ));
  }

  /// Create a copy of TasksEvent
  /// with the given fields replaced by the non-null parameter values.
  @override
  @pragma('vm:prefer-inline')
  $TaskCopyWith<$Res> get task {
    return $TaskCopyWith<$Res>(_value.task, (value) {
      return _then(_value.copyWith(task: value));
    });
  }
}

/// @nodoc

class _$RemoveTaskImpl implements RemoveTask {
  const _$RemoveTaskImpl(this.task);

  @override
  final Task task;

  @override
  String toString() {
    return 'TasksEvent.removeTask(task: $task)';
  }

  @override
  bool operator ==(Object other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$RemoveTaskImpl &&
            (identical(other.task, task) || other.task == task));
  }

  @override
  int get hashCode => Object.hash(runtimeType, task);

  /// Create a copy of TasksEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  @override
  @pragma('vm:prefer-inline')
  _$$RemoveTaskImplCopyWith<_$RemoveTaskImpl> get copyWith =>
      __$$RemoveTaskImplCopyWithImpl<_$RemoveTaskImpl>(this, _$identity);

  @override
  @optionalTypeArgs
  TResult when<TResult extends Object?>({
    required TResult Function() get,
    required TResult Function(Task task) saveTask,
    required TResult Function(Task task) removeTask,
  }) {
    return removeTask(task);
  }

  @override
  @optionalTypeArgs
  TResult? whenOrNull<TResult extends Object?>({
    TResult? Function()? get,
    TResult? Function(Task task)? saveTask,
    TResult? Function(Task task)? removeTask,
  }) {
    return removeTask?.call(task);
  }

  @override
  @optionalTypeArgs
  TResult maybeWhen<TResult extends Object?>({
    TResult Function()? get,
    TResult Function(Task task)? saveTask,
    TResult Function(Task task)? removeTask,
    required TResult orElse(),
  }) {
    if (removeTask != null) {
      return removeTask(task);
    }
    return orElse();
  }

  @override
  @optionalTypeArgs
  TResult map<TResult extends Object?>({
    required TResult Function(GetTasks value) get,
    required TResult Function(SaveTask value) saveTask,
    required TResult Function(RemoveTask value) removeTask,
  }) {
    return removeTask(this);
  }

  @override
  @optionalTypeArgs
  TResult? mapOrNull<TResult extends Object?>({
    TResult? Function(GetTasks value)? get,
    TResult? Function(SaveTask value)? saveTask,
    TResult? Function(RemoveTask value)? removeTask,
  }) {
    return removeTask?.call(this);
  }

  @override
  @optionalTypeArgs
  TResult maybeMap<TResult extends Object?>({
    TResult Function(GetTasks value)? get,
    TResult Function(SaveTask value)? saveTask,
    TResult Function(RemoveTask value)? removeTask,
    required TResult orElse(),
  }) {
    if (removeTask != null) {
      return removeTask(this);
    }
    return orElse();
  }
}

abstract class RemoveTask implements TasksEvent {
  const factory RemoveTask(final Task task) = _$RemoveTaskImpl;

  Task get task;

  /// Create a copy of TasksEvent
  /// with the given fields replaced by the non-null parameter values.
  @JsonKey(includeFromJson: false, includeToJson: false)
  _$$RemoveTaskImplCopyWith<_$RemoveTaskImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
