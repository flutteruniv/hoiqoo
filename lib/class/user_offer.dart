// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'user_offer.freezed.dart';
part 'user_offer.g.dart';

@freezed
class UserOffer with _$UserOffer {
  const factory UserOffer({
    required int id,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    @JsonKey(name: 'user_id') required int userId,
    @JsonKey(name: 'offer_id') required int offerId,
  }) = _UserOffer;

  factory UserOffer.fromJson(Map<String, dynamic> json) =>
      _$UserOfferFromJson(json);
}
