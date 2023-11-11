// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_response_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TodoResponseDtoImpl _$$TodoResponseDtoImplFromJson(
        Map<String, dynamic> json) =>
    _$TodoResponseDtoImpl(
      id: json['id'] as int,
      title: json['title'] as String,
      completed: json['completed'] as bool,
      completedAt: json['completed_at'] == null
          ? null
          : DateTime.parse(json['completed_at'] as String),
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: json['updated_at'] == null
          ? null
          : DateTime.parse(json['updated_at'] as String),
    );

Map<String, dynamic> _$$TodoResponseDtoImplToJson(
        _$TodoResponseDtoImpl instance) =>
    <String, dynamic>{
      'id': instance.id,
      'title': instance.title,
      'completed': instance.completed,
      'completed_at': instance.completedAt?.toIso8601String(),
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt?.toIso8601String(),
    };
