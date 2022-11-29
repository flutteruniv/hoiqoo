import 'package:freezed_annotation/freezed_annotation.dart';

part 'offer_ui.freezed.dart';

@freezed
class OfferUi with _$OfferUi {
  const factory OfferUi({
    required int offerId,
    required String enterpriseName,
    required String workingHours,
    required String address,
    required String remuneration,
    required List<String> tags,
    required String profileImageUrl,
  }) = _OfferUi;
}
