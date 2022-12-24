import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../class/firestore/offer/offer_tag.dart';

// 引数のofferIdを含むOfferTagを返すプロバイダー
final offerTagByOfferIdProvider = Provider.family<Future<List<OfferTag>>, int>(
  (ref, offerId) =>
      ref.watch(offerTagRepositoryProvider).fetchOfferTagsByOfferId(offerId),
);

final offerTagRepositoryProvider = Provider<OfferTagBaseRepository>(
  (ref) => throw UnimplementedError('Provider was not initialized'),
);

abstract class OfferTagBaseRepository {
  // 引数のofferIdを含むOfferTagを返す
  Future<List<OfferTag>> fetchOfferTagsByOfferId(int offerId);
}
