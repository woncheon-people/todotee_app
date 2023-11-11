import 'package:todotee_app/dto/memo_response_dto.dart';
import 'package:todotee_app/pages/memo_edit/types/memo_edit_type.dart';

class MemoEditPageArguments {
  final MemoResponseDto? memo;
  final MemoEditType memoEditType;

  MemoEditPageArguments({this.memo, required this.memoEditType});
}
