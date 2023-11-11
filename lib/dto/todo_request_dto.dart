import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_request_dto.freezed.dart';
part 'todo_request_dto.g.dart';

@freezed
class TodoRequestDto with _$TodoRequestDto {
  const factory TodoRequestDto({
    required String title,
    required bool completed,
  }) = _TodoRequestDto;

  factory TodoRequestDto.fromJson(Map<String, dynamic> json) =>
      _$TodoRequestDtoFromJson(json);
}
