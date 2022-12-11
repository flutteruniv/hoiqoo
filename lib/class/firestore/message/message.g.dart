// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'message.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Message _$$_MessageFromJson(Map<String, dynamic> json) => _$_Message(
      id: json['id'] as int,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      text: json['text'] as String,
      roomId: json['room_id'] as int,
      imageUrl: json['image_url'] as String,
      senderId: json['sender_id'] as int,
    );

Map<String, dynamic> _$$_MessageToJson(_$_Message instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'text': instance.text,
      'room_id': instance.roomId,
      'image_url': instance.imageUrl,
      'sender_id': instance.senderId,
    };
