// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'enterprise.freezed.dart';
part 'enterprise.g.dart';

@freezed
class Enterprise with _$Enterprise {
  const factory Enterprise({
    required int id,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    required String name,
    @JsonKey(name: 'profile_image_url') required String profileImageUrl,
  }) = _Enterprise;

  factory Enterprise.fromJson(Map<String, dynamic> json) =>
      _$EnterpriseFromJson(json);
}
