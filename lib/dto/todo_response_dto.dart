import 'package:freezed_annotation/freezed_annotation.dart';

part 'todo_response_dto.freezed.dart';
part 'todo_response_dto.g.dart';

@freezed
class TodoResponseDto with _$TodoResponseDto {
  const factory TodoResponseDto({
    required int id,
    required String title,
    required bool completed,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'completed_at') DateTime? completedAt,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'created_at') required DateTime createdAt,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _TodoResponseDto;

  factory TodoResponseDto.fromJson(Map<String, dynamic> json) =>
      _$TodoResponseDtoFromJson(json);
}
