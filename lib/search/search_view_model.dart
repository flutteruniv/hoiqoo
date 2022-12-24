import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../class/ui/offer_ui.dart';
import '../repository/offer/enterprise_base_repository.dart';
import '../repository/offer/offer_base_repository.dart';
import '../repository/offer/offer_tag_repository.dart';
import '../repository/offer/tag_base_repository.dart';
import '../usecase/converter.dart';

final offerUiListProvider = FutureProvider(
  (ref) => ref.watch(searchViewModelProvider).createOfferUiList(),
);

final searchViewModelProvider =
    Provider<SearchViewModel>((ref) => SearchViewModel(ref));

class SearchViewModel {
  SearchViewModel(
    this.ref,
  );

  final Ref ref;

  Future<List<OfferUi>> createOfferUiList() async {
    final offerUiList = <OfferUi>[];

    final offers =
        await ref.watch(offerRepositoryProvider).fetchAvailableOffers();

    for (final offer in offers) {
      final enterpriseId = offer.enterpriseId;

      // enterpriseの情報を取得
      final enterprise = await ref
          .watch(enterpriseRepositoryProvider)
          .fetchEnterpriseById(enterpriseId);

      // offerTagの情報を取得
      final offerTags = await ref
          .watch(offerTagRepositoryProvider)
          .fetchOfferTagsByOfferId(offer.id);

      // tagの情報を取得
      final tagNames = <String>[];
      for (final offerTag in offerTags) {
        final tag = await ref
            .watch(tagRepositoryProvider)
            .fetchTagById(offerTag.offerId);
        tagNames.add(tag.name);
      }

      final converter = ref.watch(converterProvider);

      final workingHours = converter.toWorkingHours(offer.startAt, offer.endAt);
      final remuneration = converter.toStrRemuneration(offer.remuneration);
      final offerUi = OfferUi(
        offerId: offer.id,
        enterpriseName: enterprise.name,
        workingHours: workingHours,
        address: enterprise.address,
        remuneration: remuneration,
        tags: tagNames,
        profileImageUrl: enterprise.profileImageUrl,
      );
      offerUiList.add(offerUi);
    }

    return offerUiList;
  }
}
