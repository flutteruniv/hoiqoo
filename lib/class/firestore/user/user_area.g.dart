// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user_area.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UserArea _$$_UserAreaFromJson(Map<String, dynamic> json) => _$_UserArea(
      id: json['id'] as int,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      userId: json['user_id'] as int,
      areaId: json['area_id'] as int,
    );

Map<String, dynamic> _$$_UserAreaToJson(_$_UserArea instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'user_id': instance.userId,
      'area_id': instance.areaId,
    };
