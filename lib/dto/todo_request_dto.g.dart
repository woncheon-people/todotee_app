// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'todo_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$TodoRequestDtoImpl _$$TodoRequestDtoImplFromJson(Map<String, dynamic> json) =>
    _$TodoRequestDtoImpl(
      title: json['title'] as String,
      completed: json['completed'] as bool,
    );

Map<String, dynamic> _$$TodoRequestDtoImplToJson(
        _$TodoRequestDtoImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'completed': instance.completed,
    };
