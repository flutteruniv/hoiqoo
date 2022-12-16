// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'user_offer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

UserOffer _$UserOfferFromJson(Map<String, dynamic> json) {
  return _UserOffer.fromJson(json);
}

/// @nodoc
mixin _$UserOffer {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'user_id')
  int get userId => throw _privateConstructorUsedError;
  @JsonKey(name: 'offer_id')
  int get offerId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $UserOfferCopyWith<UserOffer> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $UserOfferCopyWith<$Res> {
  factory $UserOfferCopyWith(UserOffer value, $Res Function(UserOffer) then) =
      _$UserOfferCopyWithImpl<$Res, UserOffer>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'offer_id') int offerId});
}

/// @nodoc
class _$UserOfferCopyWithImpl<$Res, $Val extends UserOffer>
    implements $UserOfferCopyWith<$Res> {
  _$UserOfferCopyWithImpl(this._value, this._then);

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
    Object? offerId = null,
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
      offerId: null == offerId
          ? _value.offerId
          : offerId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_UserOfferCopyWith<$Res> implements $UserOfferCopyWith<$Res> {
  factory _$$_UserOfferCopyWith(
          _$_UserOffer value, $Res Function(_$_UserOffer) then) =
      __$$_UserOfferCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'user_id') int userId,
      @JsonKey(name: 'offer_id') int offerId});
}

/// @nodoc
class __$$_UserOfferCopyWithImpl<$Res>
    extends _$UserOfferCopyWithImpl<$Res, _$_UserOffer>
    implements _$$_UserOfferCopyWith<$Res> {
  __$$_UserOfferCopyWithImpl(
      _$_UserOffer _value, $Res Function(_$_UserOffer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? userId = null,
    Object? offerId = null,
  }) {
    return _then(_$_UserOffer(
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
      offerId: null == offerId
          ? _value.offerId
          : offerId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_UserOffer implements _UserOffer {
  const _$_UserOffer(
      {required this.id,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      @JsonKey(name: 'user_id') required this.userId,
      @JsonKey(name: 'offer_id') required this.offerId});

  factory _$_UserOffer.fromJson(Map<String, dynamic> json) =>
      _$$_UserOfferFromJson(json);

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
  @JsonKey(name: 'offer_id')
  final int offerId;

  @override
  String toString() {
    return 'UserOffer(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, userId: $userId, offerId: $offerId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_UserOffer &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.userId, userId) || other.userId == userId) &&
            (identical(other.offerId, offerId) || other.offerId == offerId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, createdAt, updatedAt, userId, offerId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_UserOfferCopyWith<_$_UserOffer> get copyWith =>
      __$$_UserOfferCopyWithImpl<_$_UserOffer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_UserOfferToJson(
      this,
    );
  }
}

abstract class _UserOffer implements UserOffer {
  const factory _UserOffer(
      {required final int id,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      @JsonKey(name: 'updated_at') required final DateTime updatedAt,
      @JsonKey(name: 'user_id') required final int userId,
      @JsonKey(name: 'offer_id') required final int offerId}) = _$_UserOffer;

  factory _UserOffer.fromJson(Map<String, dynamic> json) =
      _$_UserOffer.fromJson;

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
  @JsonKey(name: 'offer_id')
  int get offerId;
  @override
  @JsonKey(ignore: true)
  _$$_UserOfferCopyWith<_$_UserOffer> get copyWith =>
      throw _privateConstructorUsedError;
}
