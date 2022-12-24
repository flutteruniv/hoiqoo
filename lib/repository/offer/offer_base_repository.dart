import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../class/firestore/offer/offer.dart';

// 募集中の求人を返すプロバイダー
final availableOffersProvider = Provider<Future<List<Offer>>>(
  (ref) => ref.watch(offerRepositoryProvider).fetchAvailableOffers(),
);

final offerRepositoryProvider = Provider<OfferBaseRepository>(
  (ref) => throw UnimplementedError('Provider was not initialized'),
);

abstract class OfferBaseRepository {
  // 募集中の求人を返す
  Future<List<Offer>> fetchAvailableOffers();
}
