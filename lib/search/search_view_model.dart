import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../class/firestore/offer/offer.dart';
import '../class/firestore/offer/offer_tag.dart';
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

  // repositoryで取得したデータからOfferUi型のListを作成する
  Future<List<OfferUi>> createOfferUiList() async {
    final offerUiList = <OfferUi>[];
    final offerList =
        await ref.watch(offerRepositoryProvider).fetchAvailableOffers();

    for (final offer in offerList) {
      final offerUi = await _createOfferUi(offer);
      offerUiList.add(offerUi);
    }

    return offerUiList;
  }

  // repositoryで取得したデータからOfferUi型のオブジェクトを作成する
  Future<OfferUi> _createOfferUi(Offer offer) async {
    // enterpriseの情報を取得
    final enterprise = await ref
        .watch(enterpriseRepositoryProvider)
        .fetchEnterpriseById(offer.enterpriseId);

    // offerTagの情報を取得
    final offerTagList = await ref
        .watch(offerTagRepositoryProvider)
        .fetchOfferTagListByOfferId(offer.id);

    // tagの情報を取得
    final tagNameList = await _createTagNameList(offerTagList);

    // UIで表示する形式に変換
    final converter = ref.watch(converterProvider);
    final workingHours = converter.toWorkingHours(offer.startAt, offer.endAt);
    final remuneration = converter.toStrRemuneration(offer.remuneration);

    return OfferUi(
      offerId: offer.id,
      enterpriseName: enterprise.name,
      workingHours: workingHours,
      address: enterprise.address,
      remuneration: remuneration,
      tags: tagNameList,
      profileImageUrl: enterprise.profileImageUrl,
    );
  }

  // repositoryで取得したデータからtag名のListを作成する
  Future<List<String>> _createTagNameList(List<OfferTag> offerTagList) async {
    final tagNameList = <String>[];
    for (final offerTag in offerTagList) {
      final tag =
          await ref.watch(tagRepositoryProvider).fetchTagById(offerTag.offerId);
      tagNameList.add(tag.name);
    }
    return tagNameList;
  }
}
