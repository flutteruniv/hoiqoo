// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offer_tag.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_OfferTag _$$_OfferTagFromJson(Map<String, dynamic> json) => _$_OfferTag(
      id: json['id'] as int,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      offerId: json['offer_id'] as int,
      tagId: json['tag_id'] as int,
    );

Map<String, dynamic> _$$_OfferTagToJson(_$_OfferTag instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'offer_id': instance.offerId,
      'tag_id': instance.tagId,
    };
