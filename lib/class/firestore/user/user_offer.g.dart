// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_offer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserOffer _$$_UserOfferFromJson(Map<String, dynamic> json) => _$_UserOffer(
      id: json['id'] as int,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      userId: json['user_id'] as int,
      offerId: json['offer_id'] as int,
    );

Map<String, dynamic> _$$_UserOfferToJson(_$_UserOffer instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'user_id': instance.userId,
      'offer_id': instance.offerId,
    };
