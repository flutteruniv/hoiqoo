import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../class/firestore/offer/offer_tag.dart';

final offerTagRepositoryProvider = Provider<OfferTagBaseRepository>(
  (ref) => throw UnimplementedError('Provider was not initialized'),
);

abstract class OfferTagBaseRepository {
  // 引数のofferIdを含むOfferTagを返す
  Future<List<OfferTag>> fetchOfferTagListByOfferId(int offerId);
}
