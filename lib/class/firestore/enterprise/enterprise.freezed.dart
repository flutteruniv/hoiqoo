// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'enterprise.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Enterprise _$EnterpriseFromJson(Map<String, dynamic> json) {
  return _Enterprise.fromJson(json);
}

/// @nodoc
mixin _$Enterprise {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;
  String get name => throw _privateConstructorUsedError;
  @JsonKey(name: 'profile_image_url')
  String get profileImageUrl => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $EnterpriseCopyWith<Enterprise> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $EnterpriseCopyWith<$Res> {
  factory $EnterpriseCopyWith(
          Enterprise value, $Res Function(Enterprise) then) =
      _$EnterpriseCopyWithImpl<$Res, Enterprise>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      String name,
      @JsonKey(name: 'profile_image_url') String profileImageUrl});
}

/// @nodoc
class _$EnterpriseCopyWithImpl<$Res, $Val extends Enterprise>
    implements $EnterpriseCopyWith<$Res> {
  _$EnterpriseCopyWithImpl(this._value, this._then);

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
    Object? name = null,
    Object? profileImageUrl = null,
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
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profileImageUrl: null == profileImageUrl
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_EnterpriseCopyWith<$Res>
    implements $EnterpriseCopyWith<$Res> {
  factory _$$_EnterpriseCopyWith(
          _$_Enterprise value, $Res Function(_$_Enterprise) then) =
      __$$_EnterpriseCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      String name,
      @JsonKey(name: 'profile_image_url') String profileImageUrl});
}

/// @nodoc
class __$$_EnterpriseCopyWithImpl<$Res>
    extends _$EnterpriseCopyWithImpl<$Res, _$_Enterprise>
    implements _$$_EnterpriseCopyWith<$Res> {
  __$$_EnterpriseCopyWithImpl(
      _$_Enterprise _value, $Res Function(_$_Enterprise) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? name = null,
    Object? profileImageUrl = null,
  }) {
    return _then(_$_Enterprise(
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
      name: null == name
          ? _value.name
          : name // ignore: cast_nullable_to_non_nullable
              as String,
      profileImageUrl: null == profileImageUrl
          ? _value.profileImageUrl
          : profileImageUrl // ignore: cast_nullable_to_non_nullable
              as String,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Enterprise implements _Enterprise {
  const _$_Enterprise(
      {required this.id,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      required this.name,
      @JsonKey(name: 'profile_image_url') required this.profileImageUrl});

  factory _$_Enterprise.fromJson(Map<String, dynamic> json) =>
      _$$_EnterpriseFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  @override
  final String name;
  @override
  @JsonKey(name: 'profile_image_url')
  final String profileImageUrl;

  @override
  String toString() {
    return 'Enterprise(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, name: $name, profileImageUrl: $profileImageUrl)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Enterprise &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.name, name) || other.name == name) &&
            (identical(other.profileImageUrl, profileImageUrl) ||
                other.profileImageUrl == profileImageUrl));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, createdAt, updatedAt, name, profileImageUrl);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_EnterpriseCopyWith<_$_Enterprise> get copyWith =>
      __$$_EnterpriseCopyWithImpl<_$_Enterprise>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_EnterpriseToJson(
      this,
    );
  }
}

abstract class _Enterprise implements Enterprise {
  const factory _Enterprise(
      {required final int id,
      @JsonKey(name: 'created_at')
          required final DateTime createdAt,
      @JsonKey(name: 'updated_at')
          required final DateTime updatedAt,
      required final String name,
      @JsonKey(name: 'profile_image_url')
          required final String profileImageUrl}) = _$_Enterprise;

  factory _Enterprise.fromJson(Map<String, dynamic> json) =
      _$_Enterprise.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  @override
  String get name;
  @override
  @JsonKey(name: 'profile_image_url')
  String get profileImageUrl;
  @override
  @JsonKey(ignore: true)
  _$$_EnterpriseCopyWith<_$_Enterprise> get copyWith =>
      throw _privateConstructorUsedError;
}
