import 'package:freezed_annotation/freezed_annotation.dart';

part 'offer_ui.freezed.dart';

@freezed
class OfferUi with _$OfferUi {
  const factory OfferUi({
    required int offerId,
    required String enterpriseName,
    required DateTime startAt,
    required DateTime endAt,
    required String address,
    required int remuneration,
    required List<String> tags,
    required String profileImageUrl,
  }) = _OfferUi;
}
