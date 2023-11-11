import 'package:freezed_annotation/freezed_annotation.dart';

part 'memo_response_dto.freezed.dart';
part 'memo_response_dto.g.dart';

@freezed
class MemoResponseDto with _$MemoResponseDto {
  const factory MemoResponseDto({
    required int id,
    required String title,
    required String memo,
    required bool completed,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'completed_at') DateTime? completedAt,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'created_at') required DateTime createdAt,
    // ignore: invalid_annotation_target
    @JsonKey(name: 'updated_at') DateTime? updatedAt,
  }) = _MemoResponseDto;

  factory MemoResponseDto.fromJson(Map<String, dynamic> json) =>
      _$MemoResponseDtoFromJson(json);
}
