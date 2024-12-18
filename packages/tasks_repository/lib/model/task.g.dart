// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'task.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TaskImpl _$$TaskImplFromJson(Map<String, dynamic> json) => _$TaskImpl(
      title: json['title'] as String,
      description: json['description'] as String?,
      date: json['date'] as String,
      state: $enumDecode(_$TaskStateEnumMap, json['state']),
    );

Map<String, dynamic> _$$TaskImplToJson(_$TaskImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'description': instance.description,
      'date': instance.date,
      'state': _$TaskStateEnumMap[instance.state]!,
    };

const _$TaskStateEnumMap = {
  TaskState.pending: 'pending',
  TaskState.complete: 'complete',
};
