// coverage:ignore-file
// GENERATED CODE - DO NOT MODIFY BY HAND
// ignore_for_file: type=lint
// ignore_for_file: unused_element, deprecated_member_use, deprecated_member_use_from_same_package, use_function_type_syntax_for_parameters, unnecessary_const, avoid_init_to_null, invalid_override_different_default_values_named, prefer_expression_function_bodies, annotate_overrides, invalid_annotation_target, unnecessary_question_mark

part of 'offer.dart';

// **************************************************************************
// FreezedGenerator
// **************************************************************************

T _$identity<T>(T value) => value;

final _privateConstructorUsedError = UnsupportedError(
    'It seems like you constructed your class using `MyClass._()`. This constructor is only meant to be used by freezed and you are not supposed to need it nor use it.\nPlease check the documentation here for more information: https://github.com/rrousselGit/freezed#custom-getters-and-methods');

Offer _$OfferFromJson(Map<String, dynamic> json) {
  return _Offer.fromJson(json);
}

/// @nodoc
mixin _$Offer {
  int get id => throw _privateConstructorUsedError;
  @JsonKey(name: 'created_at')
  DateTime get createdAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'start_at')
  DateTime get startAt => throw _privateConstructorUsedError;
  @JsonKey(name: 'end_at')
  DateTime get endAt => throw _privateConstructorUsedError;
  int get remuneration => throw _privateConstructorUsedError;
  @JsonKey(name: 'enterprise_id')
  int get enterpriseId => throw _privateConstructorUsedError;
  @JsonKey(name: 'catch_phrase')
  String get catchPhrase => throw _privateConstructorUsedError;
  @JsonKey(name: 'description')
  String get description => throw _privateConstructorUsedError;
  @JsonKey(name: 'applicants_number')
  int get applicantsNumber => throw _privateConstructorUsedError;
  @JsonKey(name: 'deadline_time')
  DateTime get deadlineTime => throw _privateConstructorUsedError;

  Map<String, dynamic> toJson() => throw _privateConstructorUsedError;
  @JsonKey(ignore: true)
  $OfferCopyWith<Offer> get copyWith => throw _privateConstructorUsedError;
}

/// @nodoc
abstract class $OfferCopyWith<$Res> {
  factory $OfferCopyWith(Offer value, $Res Function(Offer) then) =
      _$OfferCopyWithImpl<$Res, Offer>;
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'start_at') DateTime startAt,
      @JsonKey(name: 'end_at') DateTime endAt,
      int remuneration,
      @JsonKey(name: 'enterprise_id') int enterpriseId,
      @JsonKey(name: 'catch_phrase') String catchPhrase,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'applicants_number') int applicantsNumber,
      @JsonKey(name: 'deadline_time') DateTime deadlineTime});
}

/// @nodoc
class _$OfferCopyWithImpl<$Res, $Val extends Offer>
    implements $OfferCopyWith<$Res> {
  _$OfferCopyWithImpl(this._value, this._then);

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
    Object? startAt = null,
    Object? endAt = null,
    Object? remuneration = null,
    Object? enterpriseId = null,
    Object? catchPhrase = null,
    Object? description = null,
    Object? applicantsNumber = null,
    Object? deadlineTime = null,
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
      startAt: null == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endAt: null == endAt
          ? _value.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      remuneration: null == remuneration
          ? _value.remuneration
          : remuneration // ignore: cast_nullable_to_non_nullable
              as int,
      enterpriseId: null == enterpriseId
          ? _value.enterpriseId
          : enterpriseId // ignore: cast_nullable_to_non_nullable
              as int,
      catchPhrase: null == catchPhrase
          ? _value.catchPhrase
          : catchPhrase // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      applicantsNumber: null == applicantsNumber
          ? _value.applicantsNumber
          : applicantsNumber // ignore: cast_nullable_to_non_nullable
              as int,
      deadlineTime: null == deadlineTime
          ? _value.deadlineTime
          : deadlineTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ) as $Val);
  }
}

/// @nodoc
abstract class _$$_OfferCopyWith<$Res> implements $OfferCopyWith<$Res> {
  factory _$$_OfferCopyWith(_$_Offer value, $Res Function(_$_Offer) then) =
      __$$_OfferCopyWithImpl<$Res>;
  @override
  @useResult
  $Res call(
      {int id,
      @JsonKey(name: 'created_at') DateTime createdAt,
      @JsonKey(name: 'updated_at') DateTime updatedAt,
      @JsonKey(name: 'start_at') DateTime startAt,
      @JsonKey(name: 'end_at') DateTime endAt,
      int remuneration,
      @JsonKey(name: 'enterprise_id') int enterpriseId,
      @JsonKey(name: 'catch_phrase') String catchPhrase,
      @JsonKey(name: 'description') String description,
      @JsonKey(name: 'applicants_number') int applicantsNumber,
      @JsonKey(name: 'deadline_time') DateTime deadlineTime});
}

/// @nodoc
class __$$_OfferCopyWithImpl<$Res> extends _$OfferCopyWithImpl<$Res, _$_Offer>
    implements _$$_OfferCopyWith<$Res> {
  __$$_OfferCopyWithImpl(_$_Offer _value, $Res Function(_$_Offer) _then)
      : super(_value, _then);

  @pragma('vm:prefer-inline')
  @override
  $Res call({
    Object? id = null,
    Object? createdAt = null,
    Object? updatedAt = null,
    Object? startAt = null,
    Object? endAt = null,
    Object? remuneration = null,
    Object? enterpriseId = null,
    Object? catchPhrase = null,
    Object? description = null,
    Object? applicantsNumber = null,
    Object? deadlineTime = null,
  }) {
    return _then(_$_Offer(
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
      startAt: null == startAt
          ? _value.startAt
          : startAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      endAt: null == endAt
          ? _value.endAt
          : endAt // ignore: cast_nullable_to_non_nullable
              as DateTime,
      remuneration: null == remuneration
          ? _value.remuneration
          : remuneration // ignore: cast_nullable_to_non_nullable
              as int,
      enterpriseId: null == enterpriseId
          ? _value.enterpriseId
          : enterpriseId // ignore: cast_nullable_to_non_nullable
              as int,
      catchPhrase: null == catchPhrase
          ? _value.catchPhrase
          : catchPhrase // ignore: cast_nullable_to_non_nullable
              as String,
      description: null == description
          ? _value.description
          : description // ignore: cast_nullable_to_non_nullable
              as String,
      applicantsNumber: null == applicantsNumber
          ? _value.applicantsNumber
          : applicantsNumber // ignore: cast_nullable_to_non_nullable
              as int,
      deadlineTime: null == deadlineTime
          ? _value.deadlineTime
          : deadlineTime // ignore: cast_nullable_to_non_nullable
              as DateTime,
    ));
  }
}

/// @nodoc
@JsonSerializable()
class _$_Offer implements _Offer {
  const _$_Offer(
      {required this.id,
      @JsonKey(name: 'created_at') required this.createdAt,
      @JsonKey(name: 'updated_at') required this.updatedAt,
      @JsonKey(name: 'start_at') required this.startAt,
      @JsonKey(name: 'end_at') required this.endAt,
      required this.remuneration,
      @JsonKey(name: 'enterprise_id') required this.enterpriseId,
      @JsonKey(name: 'catch_phrase') required this.catchPhrase,
      @JsonKey(name: 'description') required this.description,
      @JsonKey(name: 'applicants_number') required this.applicantsNumber,
      @JsonKey(name: 'deadline_time') required this.deadlineTime});

  factory _$_Offer.fromJson(Map<String, dynamic> json) =>
      _$$_OfferFromJson(json);

  @override
  final int id;
  @override
  @JsonKey(name: 'created_at')
  final DateTime createdAt;
  @override
  @JsonKey(name: 'updated_at')
  final DateTime updatedAt;
  @override
  @JsonKey(name: 'start_at')
  final DateTime startAt;
  @override
  @JsonKey(name: 'end_at')
  final DateTime endAt;
  @override
  final int remuneration;
  @override
  @JsonKey(name: 'enterprise_id')
  final int enterpriseId;
  @override
  @JsonKey(name: 'catch_phrase')
  final String catchPhrase;
  @override
  @JsonKey(name: 'description')
  final String description;
  @override
  @JsonKey(name: 'applicants_number')
  final int applicantsNumber;
  @override
  @JsonKey(name: 'deadline_time')
  final DateTime deadlineTime;

  @override
  String toString() {
    return 'Offer(id: $id, createdAt: $createdAt, updatedAt: $updatedAt, startAt: $startAt, endAt: $endAt, remuneration: $remuneration, enterpriseId: $enterpriseId, catchPhrase: $catchPhrase, description: $description, applicantsNumber: $applicantsNumber, deadlineTime: $deadlineTime)';
  }

  @override
  bool operator ==(dynamic other) {
    return identical(this, other) ||
        (other.runtimeType == runtimeType &&
            other is _$_Offer &&
            (identical(other.id, id) || other.id == id) &&
            (identical(other.createdAt, createdAt) ||
                other.createdAt == createdAt) &&
            (identical(other.updatedAt, updatedAt) ||
                other.updatedAt == updatedAt) &&
            (identical(other.startAt, startAt) || other.startAt == startAt) &&
            (identical(other.endAt, endAt) || other.endAt == endAt) &&
            (identical(other.remuneration, remuneration) ||
                other.remuneration == remuneration) &&
            (identical(other.enterpriseId, enterpriseId) ||
                other.enterpriseId == enterpriseId) &&
            (identical(other.catchPhrase, catchPhrase) ||
                other.catchPhrase == catchPhrase) &&
            (identical(other.description, description) ||
                other.description == description) &&
            (identical(other.applicantsNumber, applicantsNumber) ||
                other.applicantsNumber == applicantsNumber) &&
            (identical(other.deadlineTime, deadlineTime) ||
                other.deadlineTime == deadlineTime));
  }

  @JsonKey(ignore: true)
  @override
  int get hashCode => Object.hash(
      runtimeType,
      id,
      createdAt,
      updatedAt,
      startAt,
      endAt,
      remuneration,
      enterpriseId,
      catchPhrase,
      description,
      applicantsNumber,
      deadlineTime);

  @JsonKey(ignore: true)
  @override
  @pragma('vm:prefer-inline')
  _$$_OfferCopyWith<_$_Offer> get copyWith =>
      __$$_OfferCopyWithImpl<_$_Offer>(this, _$identity);

  @override
  Map<String, dynamic> toJson() {
    return _$$_OfferToJson(
      this,
    );
  }
}

abstract class _Offer implements Offer {
  const factory _Offer(
      {required final int id,
      @JsonKey(name: 'created_at')
          required final DateTime createdAt,
      @JsonKey(name: 'updated_at')
          required final DateTime updatedAt,
      @JsonKey(name: 'start_at')
          required final DateTime startAt,
      @JsonKey(name: 'end_at')
          required final DateTime endAt,
      required final int remuneration,
      @JsonKey(name: 'enterprise_id')
          required final int enterpriseId,
      @JsonKey(name: 'catch_phrase')
          required final String catchPhrase,
      @JsonKey(name: 'description')
          required final String description,
      @JsonKey(name: 'applicants_number')
          required final int applicantsNumber,
      @JsonKey(name: 'deadline_time')
          required final DateTime deadlineTime}) = _$_Offer;

  factory _Offer.fromJson(Map<String, dynamic> json) = _$_Offer.fromJson;

  @override
  int get id;
  @override
  @JsonKey(name: 'created_at')
  DateTime get createdAt;
  @override
  @JsonKey(name: 'updated_at')
  DateTime get updatedAt;
  @override
  @JsonKey(name: 'start_at')
  DateTime get startAt;
  @override
  @JsonKey(name: 'end_at')
  DateTime get endAt;
  @override
  int get remuneration;
  @override
  @JsonKey(name: 'enterprise_id')
  int get enterpriseId;
  @override
  @JsonKey(name: 'catch_phrase')
  String get catchPhrase;
  @override
  @JsonKey(name: 'description')
  String get description;
  @override
  @JsonKey(name: 'applicants_number')
  int get applicantsNumber;
  @override
  @JsonKey(name: 'deadline_time')
  DateTime get deadlineTime;
  @override
  @JsonKey(ignore: true)
  _$$_OfferCopyWith<_$_Offer> get copyWith =>
      throw _privateConstructorUsedError;
}
