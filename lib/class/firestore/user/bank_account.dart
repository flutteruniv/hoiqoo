// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'bank_account.freezed.dart';
part 'bank_account.g.dart';

@freezed
class BankAccount with _$BankAccount {
  const factory BankAccount({
    required int id,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    @JsonKey(name: 'user_id') required int userId,
    @JsonKey(name: 'bank_name') required String bankName,
    required int code,
    @JsonKey(name: 'branch_name') required String branchName,
    @JsonKey(name: 'branch_code') required int branchCode,
    @JsonKey(name: 'account_type') required int accountType,
    @JsonKey(name: 'account_number') required int accountNumber,
    required int name,
  }) = _BankAccount;

  factory BankAccount.fromJson(Map<String, dynamic> json) =>
      _$BankAccountFromJson(json);
}
