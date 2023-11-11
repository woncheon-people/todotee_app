// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'memo_request_dto.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$MemoRequestDtoImpl _$$MemoRequestDtoImplFromJson(Map<String, dynamic> json) =>
    _$MemoRequestDtoImpl(
      title: json['title'] as String,
      memo: json['memo'] as String,
      completed: json['completed'] as bool,
    );

Map<String, dynamic> _$$MemoRequestDtoImplToJson(
        _$MemoRequestDtoImpl instance) =>
    <String, dynamic>{
      'title': instance.title,
      'memo': instance.memo,
      'completed': instance.completed,
    };
