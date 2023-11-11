// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'memo_request_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MemoRequestDto _$MemoRequestDtoFromJson(Map<String, dynamic> json) {
  return _MemoRequestDto.fromJson(json);
}

/// @nodoc
mixin _$MemoRequestDto {
  String get title => throw _privateConstructorUsedError;
  String get memo => throw _privateConstructorUsedError;
  bool get completed => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemoRequestDtoCopyWith<MemoRequestDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemoRequestDtoCopyWith<$Res> {
  factory $MemoRequestDtoCopyWith(
          MemoRequestDto value, $Res Function(MemoRequestDto) then) =
      _$MemoRequestDtoCopyWithImpl<$Res, MemoRequestDto>;
  @useResult
  $Res call({String title, String memo, bool completed});
}

/// @nodoc
class _$MemoRequestDtoCopyWithImpl<$Res, $Val extends MemoRequestDto>
    implements $MemoRequestDtoCopyWith<$Res> {
  _$MemoRequestDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? memo = null,
    Object? completed = null,
  }) {
    return _then(_value.copyWith(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      memo: null == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MemoRequestDtoImplCopyWith<$Res>
    implements $MemoRequestDtoCopyWith<$Res> {
  factory _$$MemoRequestDtoImplCopyWith(_$MemoRequestDtoImpl value,
          $Res Function(_$MemoRequestDtoImpl) then) =
      __$$MemoRequestDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call({String title, String memo, bool completed});
}

/// @nodoc
class __$$MemoRequestDtoImplCopyWithImpl<$Res>
    extends _$MemoRequestDtoCopyWithImpl<$Res, _$MemoRequestDtoImpl>
    implements _$$MemoRequestDtoImplCopyWith<$Res> {
  __$$MemoRequestDtoImplCopyWithImpl(
      _$MemoRequestDtoImpl _value, $Res Function(_$MemoRequestDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? title = null,
    Object? memo = null,
    Object? completed = null,
  }) {
    return _then(_$MemoRequestDtoImpl(
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
              as String,
      memo: null == memo
          ? _value.memo
          : memo // ignore: cast_nullable_to_non_nullable
              as String,
      completed: null == completed
          ? _value.completed
          : completed // ignore: cast_nullable_to_non_nullable
              as bool,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MemoRequestDtoImpl implements _MemoRequestDto {
  const _$MemoRequestDtoImpl(
      {required this.title, required this.memo, required this.completed});

  factory _$MemoRequestDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MemoRequestDtoImplFromJson(json);

  @override
  final String title;
  @override
  final String memo;
  @override
  final bool completed;

  @override
  String toString() {
    return 'MemoRequestDto(title: $title, memo: $memo, completed: $completed)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemoRequestDtoImpl &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.memo, memo) || other.memo == memo) &&
            (identical(other.completed, completed) ||
                other.completed == completed));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, title, memo, completed);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MemoRequestDtoImplCopyWith<_$MemoRequestDtoImpl> get copyWith =>
      __$$MemoRequestDtoImplCopyWithImpl<_$MemoRequestDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MemoRequestDtoImplToJson(
      this,
    );
  }
}

abstract class _MemoRequestDto implements MemoRequestDto {
  const factory _MemoRequestDto(
      {required final String title,
      required final String memo,
      required final bool completed}) = _$MemoRequestDtoImpl;

  factory _MemoRequestDto.fromJson(Map<String, dynamic> json) =
      _$MemoRequestDtoImpl.fromJson;

  @override
  String get title;
  @override
  String get memo;
  @override
  bool get completed;
  @override
  @JsonKey(ignore: true)
  _$$MemoRequestDtoImplCopyWith<_$MemoRequestDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
