// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_area.freezed.dart';
part 'user_area.g.dart';

@freezed
class UserArea with _$UserArea {
  const factory UserArea({
    required int id,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    @JsonKey(name: 'user_id') required int userId,
    @JsonKey(name: 'area_id') required int areaId,
  }) = _UserArea;

  factory UserArea.fromJson(Map<String, dynamic> json) =>
      _$UserAreaFromJson(json);
}
