// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'user.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_User _$$_UserFromJson(Map<String, dynamic> json) => _$_User(
      id: json['id'] as int,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      name: json['name'] as String,
      birthday: DateTime.parse(json['birthday'] as String),
      sex: json['sex'] as int,
      deletedAt: DateTime.parse(json['deleted_at'] as String),
    );

Map<String, dynamic> _$$_UserToJson(_$_User instance) => <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'name': instance.name,
      'birthday': instance.birthday.toIso8601String(),
      'sex': instance.sex,
      'deleted_at': instance.deletedAt.toIso8601String(),
    };
