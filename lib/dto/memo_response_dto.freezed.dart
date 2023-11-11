// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'memo_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

MemoResponseDto _$MemoResponseDtoFromJson(Map<String, dynamic> json) {
  return _MemoResponseDto.fromJson(json);
}

/// @nodoc
mixin _$MemoResponseDto {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
  String get memo => throw _privateConstructorUsedError;
  bool get completed =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'completed_at')
  DateTime? get completedAt =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'created_at')
  DateTime get createdAt =>
      throw _privateConstructorUsedError; // ignore: invalid_annotation_target
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $MemoResponseDtoCopyWith<MemoResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $MemoResponseDtoCopyWith<$Res> {
  factory $MemoResponseDtoCopyWith(
          MemoResponseDto value, $Res Function(MemoResponseDto) then) =
      _$MemoResponseDtoCopyWithImpl<$Res, MemoResponseDto>;
  @useResult
  $Res call(
      {int id,
      String title,
      String memo,
      bool completed,
      @JsonKey(name: 'completed_at') DateTime? completedAt,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$MemoResponseDtoCopyWithImpl<$Res, $Val extends MemoResponseDto>
    implements $MemoResponseDtoCopyWith<$Res> {
  _$MemoResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? memo = null,
    Object? completed = null,
    Object? completedAt = freezed,
    Object? createdAt = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$MemoResponseDtoImplCopyWith<$Res>
    implements $MemoResponseDtoCopyWith<$Res> {
  factory _$$MemoResponseDtoImplCopyWith(_$MemoResponseDtoImpl value,
          $Res Function(_$MemoResponseDtoImpl) then) =
      __$$MemoResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      String memo,
      bool completed,
      @JsonKey(name: 'completed_at') DateTime? completedAt,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$$MemoResponseDtoImplCopyWithImpl<$Res>
    extends _$MemoResponseDtoCopyWithImpl<$Res, _$MemoResponseDtoImpl>
    implements _$$MemoResponseDtoImplCopyWith<$Res> {
  __$$MemoResponseDtoImplCopyWithImpl(
      _$MemoResponseDtoImpl _value, $Res Function(_$MemoResponseDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? memo = null,
    Object? completed = null,
    Object? completedAt = freezed,
    Object? createdAt = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_$MemoResponseDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
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
      completedAt: freezed == completedAt
          ? _value.completedAt
          : completedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: freezed == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime?,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$MemoResponseDtoImpl implements _MemoResponseDto {
  const _$MemoResponseDtoImpl(
      {required this.id,
      required this.title,
      required this.memo,
      required this.completed,
      @JsonKey(name: 'completed_at') this.completedAt,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$MemoResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$MemoResponseDtoImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
  @override
  final String memo;
  @override
  final bool completed;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'completed_at')
  final DateTime? completedAt;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
// ignore: invalid_annotation_target
  @override
  @JsonKey(name: 'updated_at')
  final DateTime? updatedAt;

  @override
  String toString() {
    return 'MemoResponseDto(id: $id, title: $title, memo: $memo, completed: $completed, completedAt: $completedAt, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$MemoResponseDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
            (identical(other.memo, memo) || other.memo == memo) &&
            (identical(other.completed, completed) ||
                other.completed == completed) &&
            (identical(other.completedAt, completedAt) ||
                other.completedAt == completedAt) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(runtimeType, id, title, memo, completed,
      completedAt, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$MemoResponseDtoImplCopyWith<_$MemoResponseDtoImpl> get copyWith =>
      __$$MemoResponseDtoImplCopyWithImpl<_$MemoResponseDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$MemoResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _MemoResponseDto implements MemoResponseDto {
  const factory _MemoResponseDto(
          {required final int id,
          required final String title,
          required final String memo,
          required final bool completed,
          @JsonKey(name: 'completed_at') final DateTime? completedAt,
          @JsonKey(name: 'created_at') required final DateTime createdAt,
          @JsonKey(name: 'updated_at') final DateTime? updatedAt}) =
      _$MemoResponseDtoImpl;

  factory _MemoResponseDto.fromJson(Map<String, dynamic> json) =
      _$MemoResponseDtoImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
  @override
  String get memo;
  @override
  bool get completed;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'completed_at')
  DateTime? get completedAt;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override // ignore: invalid_annotation_target
  @JsonKey(name: 'updated_at')
  DateTime? get updatedAt;
  @override
  @JsonKey(ignore: true)
  _$$MemoResponseDtoImplCopyWith<_$MemoResponseDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
