// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'offer_tag.freezed.dart';
part 'offer_tag.g.dart';

@freezed
class OfferTag with _$OfferTag {
  const factory OfferTag({
    required int id,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    @JsonKey(name: 'offer_id') required int offerId,
    @JsonKey(name: 'tag_id') required int tagId,
  }) = _OfferTag;

  factory OfferTag.fromJson(Map<String, dynamic> json) =>
      _$OfferTagFromJson(json);
}
