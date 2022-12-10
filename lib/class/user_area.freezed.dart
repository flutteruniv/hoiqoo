// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_area.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserArea _$UserAreaFromJson(Map<String, dynamic> json) {
  return _UserArea.fromJson(json);
}

/// @nodoc
mixin _$UserArea {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'area_id')
  int get areaId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserAreaCopyWith<UserArea> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserAreaCopyWith<$Res> {
  factory $UserAreaCopyWith(UserArea value, $Res Function(UserArea) then) =
      _$UserAreaCopyWithImpl<$Res, UserArea>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'area_id') int areaId});
}

/// @nodoc
class _$UserAreaCopyWithImpl<$Res, $Val extends UserArea>
    implements $UserAreaCopyWith<$Res> {
  _$UserAreaCopyWithImpl(this._value, this._then);

  // ignore: unused_field
  final $Val _value;
  // ignore: unused_field
  final $Res Function($Val) _then;

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? userId = null,
    Object? areaId = null,
  }) {
    return _then(_value.copyWith(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      areaId: null == areaId
          ? _value.areaId
          : areaId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserAreaCopyWith<$Res> implements $UserAreaCopyWith<$Res> {
  factory _$$_UserAreaCopyWith(
          _$_UserArea value, $Res Function(_$_UserArea) then) =
      __$$_UserAreaCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'area_id') int areaId});
}

/// @nodoc
class __$$_UserAreaCopyWithImpl<$Res>
    extends _$UserAreaCopyWithImpl<$Res, _$_UserArea>
    implements _$$_UserAreaCopyWith<$Res> {
  __$$_UserAreaCopyWithImpl(
      _$_UserArea _value, $Res Function(_$_UserArea) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? userId = null,
    Object? areaId = null,
  }) {
    return _then(_$_UserArea(
      id: null == id
          ? _value.id
          : id // ignore: cast_nullable_to_non_nullable
              as int,
      createdAt: null == createdAt
          ? _value.createdAt
          : createdAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      updatedAt: null == updatedAt
          ? _value.updatedAt
          : updatedAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      userId: null == userId
          ? _value.userId
          : userId // ignore: cast_nullable_to_non_nullable
              as int,
      areaId: null == areaId
          ? _value.areaId
          : areaId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserArea implements _UserArea {
  const _$_UserArea(
      {required this.id,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'area_id') required this.areaId});

  factory _$_UserArea.fromJson(Map<String, dynamic> json) =>
      _$$_UserAreaFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  @override
  @JsonKey(name: 'user_id')
  final int userId;
  @override
  @JsonKey(name: 'area_id')
  final int areaId;

  @override
  String toString() {
    return 'UserArea(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, userId: $userId, areaId: $areaId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserArea &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.areaId, areaId) || other.areaId == areaId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, createdAt, updatedAt, userId, areaId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserAreaCopyWith<_$_UserArea> get copyWith =>
      __$$_UserAreaCopyWithImpl<_$_UserArea>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserAreaToJson(
      this,
    );
  }
}

abstract class _UserArea implements UserArea {
  const factory _UserArea(
      {required final int id,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      @JsonKey(name: 'updated_at') required final DateTime updatedAt,
      @JsonKey(name: 'user_id') required final int userId,
      @JsonKey(name: 'area_id') required final int areaId}) = _$_UserArea;

  factory _UserArea.fromJson(Map<String, dynamic> json) = _$_UserArea.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  @override
  @JsonKey(name: 'user_id')
  int get userId;
  @override
  @JsonKey(name: 'area_id')
  int get areaId;
  @override
  @JsonKey(ignore: true)
  _$$_UserAreaCopyWith<_$_UserArea> get copyWith =>
      throw _privateConstructorUsedError;
}
