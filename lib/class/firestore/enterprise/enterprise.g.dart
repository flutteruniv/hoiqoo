// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'enterprise.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Enterprise _$$_EnterpriseFromJson(Map<String, dynamic> json) =>
    _$_Enterprise(
      id: json['id'] as int,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      name: json['name'] as String,
      address: json['address'] as String,
      profileImageUrl: json['profile_image_url'] as String,
    );

Map<String, dynamic> _$$_EnterpriseToJson(_$_Enterprise instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'name': instance.name,
      'address': instance.address,
      'profile_image_url': instance.profileImageUrl,
    };
