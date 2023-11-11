import 'package:freezed_annotation/freezed_annotation.dart';

part 'memo_request_dto.freezed.dart';
part 'memo_request_dto.g.dart';

@freezed
class MemoRequestDto with _$MemoRequestDto {
  const factory MemoRequestDto({
    required String title,
    required String memo,
    required bool completed,
  }) = _MemoRequestDto;

  factory MemoRequestDto.fromJson(Map<String, dynamic> json) =>
      _$MemoRequestDtoFromJson(json);
}
