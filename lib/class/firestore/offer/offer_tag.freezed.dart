// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offer_tag.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

OfferTag _$OfferTagFromJson(Map<String, dynamic> json) {
  return _OfferTag.fromJson(json);
}

/// @nodoc
mixin _$OfferTag {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'offer_id')
  int get offerId => throw _privateConstructorUsedError;
  @JsonKey(name: 'tag_id')
  int get tagId => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OfferTagCopyWith<OfferTag> get copyWith =>
      throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferTagCopyWith<$Res> {
  factory $OfferTagCopyWith(OfferTag value, $Res Function(OfferTag) then) =
      _$OfferTagCopyWithImpl<$Res, OfferTag>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'offer_id') int offerId,
      @JsonKey(name: 'tag_id') int tagId});
}

/// @nodoc
class _$OfferTagCopyWithImpl<$Res, $Val extends OfferTag>
    implements $OfferTagCopyWith<$Res> {
  _$OfferTagCopyWithImpl(this._value, this._then);

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
    Object? offerId = null,
    Object? tagId = null,
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
      offerId: null == offerId
          ? _value.offerId
          : offerId // ignore: cast_nullable_to_non_nullable
              as int,
      tagId: null == tagId
          ? _value.tagId
          : tagId // ignore: cast_nullable_to_non_nullable
              as int,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OfferTagCopyWith<$Res> implements $OfferTagCopyWith<$Res> {
  factory _$$_OfferTagCopyWith(
          _$_OfferTag value, $Res Function(_$_OfferTag) then) =
      __$$_OfferTagCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'offer_id') int offerId,
      @JsonKey(name: 'tag_id') int tagId});
}

/// @nodoc
class __$$_OfferTagCopyWithImpl<$Res>
    extends _$OfferTagCopyWithImpl<$Res, _$_OfferTag>
    implements _$$_OfferTagCopyWith<$Res> {
  __$$_OfferTagCopyWithImpl(
      _$_OfferTag _value, $Res Function(_$_OfferTag) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? offerId = null,
    Object? tagId = null,
  }) {
    return _then(_$_OfferTag(
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
      offerId: null == offerId
          ? _value.offerId
          : offerId // ignore: cast_nullable_to_non_nullable
              as int,
      tagId: null == tagId
          ? _value.tagId
          : tagId // ignore: cast_nullable_to_non_nullable
              as int,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_OfferTag implements _OfferTag {
  const _$_OfferTag(
      {required this.id,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      @JsonKey(name: 'offer_id') required this.offerId,
      @JsonKey(name: 'tag_id') required this.tagId});

  factory _$_OfferTag.fromJson(Map<String, dynamic> json) =>
      _$$_OfferTagFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  @override
  @JsonKey(name: 'offer_id')
  final int offerId;
  @override
  @JsonKey(name: 'tag_id')
  final int tagId;

  @override
  String toString() {
    return 'OfferTag(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, offerId: $offerId, tagId: $tagId)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_OfferTag &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.offerId, offerId) || other.offerId == offerId) &&
            (identical(other.tagId, tagId) || other.tagId == tagId));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode =>
      Object.hash(runtimeType, id, createdAt, updatedAt, offerId, tagId);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OfferTagCopyWith<_$_OfferTag> get copyWith =>
      __$$_OfferTagCopyWithImpl<_$_OfferTag>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OfferTagToJson(
      this,
    );
  }
}

abstract class _OfferTag implements OfferTag {
  const factory _OfferTag(
      {required final int id,
      @JsonKey(name: 'created_at') required final DateTime createdAt,
      @JsonKey(name: 'updated_at') required final DateTime updatedAt,
      @JsonKey(name: 'offer_id') required final int offerId,
      @JsonKey(name: 'tag_id') required final int tagId}) = _$_OfferTag;

  factory _OfferTag.fromJson(Map<String, dynamic> json) = _$_OfferTag.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  @override
  @JsonKey(name: 'offer_id')
  int get offerId;
  @override
  @JsonKey(name: 'tag_id')
  int get tagId;
  @override
  @JsonKey(ignore: true)
  _$$_OfferTagCopyWith<_$_OfferTag> get copyWith =>
      throw _privateConstructorUsedError;
}
