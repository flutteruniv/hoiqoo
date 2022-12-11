// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'area.freezed.dart';
part 'area.g.dart';

@freezed
class Area with _$Area {
  const factory Area({
    required int id,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    required String name,
  }) = _Area;

  factory Area.fromJson(Map<String, dynamic> json) => _$AreaFromJson(json);
}
