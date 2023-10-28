// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'todo_response_dto.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

TodoResponseDto _$TodoResponseDtoFromJson(Map<String, dynamic> json) {
  return _TodoResponseDto.fromJson(json);
}

/// @nodoc
mixin _$TodoResponseDto {
  int get id => throw _privateConstructorUsedError;
  String get title => throw _privateConstructorUsedError;
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
  $TodoResponseDtoCopyWith<TodoResponseDto> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $TodoResponseDtoCopyWith<$Res> {
  factory $TodoResponseDtoCopyWith(
          TodoResponseDto value, $Res Function(TodoResponseDto) then) =
      _$TodoResponseDtoCopyWithImpl<$Res, TodoResponseDto>;
  @useResult
  $Res call(
      {int id,
      String title,
      bool completed,
      @JsonKey(name: 'completed_at') DateTime? completedAt,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class _$TodoResponseDtoCopyWithImpl<$Res, $Val extends TodoResponseDto>
    implements $TodoResponseDtoCopyWith<$Res> {
  _$TodoResponseDtoCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
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
abstract class _$$TodoResponseDtoImplCopyWith<$Res>
    implements $TodoResponseDtoCopyWith<$Res> {
  factory _$$TodoResponseDtoImplCopyWith(_$TodoResponseDtoImpl value,
          $Res Function(_$TodoResponseDtoImpl) then) =
      __$$TodoResponseDtoImplCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      String title,
      bool completed,
      @JsonKey(name: 'completed_at') DateTime? completedAt,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime? updatedAt});
}

/// @nodoc
class __$$TodoResponseDtoImplCopyWithImpl<$Res>
    extends _$TodoResponseDtoCopyWithImpl<$Res, _$TodoResponseDtoImpl>
    implements _$$TodoResponseDtoImplCopyWith<$Res> {
  __$$TodoResponseDtoImplCopyWithImpl(
      _$TodoResponseDtoImpl _value, $Res Function(_$TodoResponseDtoImpl) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? title = null,
    Object? completed = null,
    Object? completedAt = freezed,
    Object? createdAt = null,
    Object? updatedAt = freezed,
  }) {
    return _then(_$TodoResponseDtoImpl(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      title: null == title
          ? _value.title
          : title // ignore: cast_nullable_to_non_nullable
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
class _$TodoResponseDtoImpl implements _TodoResponseDto {
  const _$TodoResponseDtoImpl(
      {required this.id,
      required this.title,
      required this.completed,
      @JsonKey(name: 'completed_at') this.completedAt,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') this.updatedAt});

  factory _$TodoResponseDtoImpl.fromJson(Map<String, dynamic> json) =>
      _$$TodoResponseDtoImplFromJson(json);

  @override
  final int id;
  @override
  final String title;
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
    return 'TodoResponseDto(id: $id, title: $title, completed: $completed, completedAt: $completedAt, createdAt: $createdAt, updatedAt: $updatedAt)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$TodoResponseDtoImpl &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.title, title) || other.title == title) &&
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
  int get hashCode => Object.hash(
      runtimeType, id, title, completed, completedAt, createdAt, updatedAt);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$TodoResponseDtoImplCopyWith<_$TodoResponseDtoImpl> get copyWith =>
      __$$TodoResponseDtoImplCopyWithImpl<_$TodoResponseDtoImpl>(
          this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$TodoResponseDtoImplToJson(
      this,
    );
  }
}

abstract class _TodoResponseDto implements TodoResponseDto {
  const factory _TodoResponseDto(
          {required final int id,
          required final String title,
          required final bool completed,
          @JsonKey(name: 'completed_at') final DateTime? completedAt,
          @JsonKey(name: 'created_at') required final DateTime createdAt,
          @JsonKey(name: 'updated_at') final DateTime? updatedAt}) =
      _$TodoResponseDtoImpl;

  factory _TodoResponseDto.fromJson(Map<String, dynamic> json) =
      _$TodoResponseDtoImpl.fromJson;

  @override
  int get id;
  @override
  String get title;
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
  _$$TodoResponseDtoImplCopyWith<_$TodoResponseDtoImpl> get copyWith =>
      throw _privateConstructorUsedError;
}
