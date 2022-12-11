// ignore_for_file: invalid_annotation_target

import 'package:freezed_annotation/freezed_annotation.dart';

part 'offer.freezed.dart';
part 'offer.g.dart';

@freezed
class Offer with _$Offer {
  const factory Offer({
    required int id,
    @JsonKey(name: 'created_at') required DateTime createdAt,
    @JsonKey(name: 'updated_at') required DateTime updatedAt,
    @JsonKey(name: 'start_at') required DateTime startAt,
    @JsonKey(name: 'end_at') required DateTime endAt,
    required int remuneration,
    @JsonKey(name: 'enterprise_id') required int enterpriseId,
    @JsonKey(name: 'catch_phrase') required String catchPhrase,
    @JsonKey(name: 'description') required String description,
    @JsonKey(name: 'applicants_number') required int applicantsNumber,
    @JsonKey(name: 'deadline_time') required DateTime deadlineTime,
  }) = _Offer;

  factory Offer.fromJson(Map<String, dynamic> json) => _$OfferFromJson(json);
}
