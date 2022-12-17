// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'offer.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_Offer _$$_OfferFromJson(Map<String, dynamic> json) => _$_Offer(
      id: json['id'] as int,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      startAt: DateTime.parse(json['start_at'] as String),
      endAt: DateTime.parse(json['end_at'] as String),
      remuneration: json['remuneration'] as int,
      enterpriseId: json['enterprise_id'] as int,
      catchPhrase: json['catch_phrase'] as String,
      description: json['description'] as String,
      applicantsNumber: json['applicants_number'] as int,
      deadlineTime: DateTime.parse(json['deadline_time'] as String),
    );

Map<String, dynamic> _$$_OfferToJson(_$_Offer instance) => <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'start_at': instance.startAt.toIso8601String(),
      'end_at': instance.endAt.toIso8601String(),
      'remuneration': instance.remuneration,
      'enterprise_id': instance.enterpriseId,
      'catch_phrase': instance.catchPhrase,
      'description': instance.description,
      'applicants_number': instance.applicantsNumber,
      'deadline_time': instance.deadlineTime.toIso8601String(),
    };
