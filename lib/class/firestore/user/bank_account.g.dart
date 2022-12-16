// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'bank_account.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_BankAccount _$$_BankAccountFromJson(Map<String, dynamic> json) =>
    _$_BankAccount(
      id: json['id'] as int,
      createdAt: DateTime.parse(json['created_at'] as String),
      updatedAt: DateTime.parse(json['updated_at'] as String),
      userId: json['user_id'] as int,
      bankName: json['bank_name'] as String,
      code: json['code'] as int,
      branchName: json['branch_name'] as String,
      branchCode: json['branch_code'] as int,
      accountType: json['account_type'] as int,
      accountNumber: json['account_number'] as int,
      name: json['name'] as int,
    );

Map<String, dynamic> _$$_BankAccountToJson(_$_BankAccount instance) =>
    <String, dynamic>{
      'id': instance.id,
      'created_at': instance.createdAt.toIso8601String(),
      'updated_at': instance.updatedAt.toIso8601String(),
      'user_id': instance.userId,
      'bank_name': instance.bankName,
      'code': instance.code,
      'branch_name': instance.branchName,
      'branch_code': instance.branchCode,
      'account_type': instance.accountType,
      'account_number': instance.accountNumber,
      'name': instance.name,
    };
