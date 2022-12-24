import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../class/firestore/offer/offer_tag.dart';
import '../../repository/offer/offer_tag_repository.dart';
import '../class/offer_tag_mock_data.dart';

final mockOfferTagRepositoryProvider =
    Provider((ref) => MockOfferTagRepository());

class MockOfferTagRepository extends OfferTagBaseRepository {
  @override
  Future<List<OfferTag>> fetchOfferTagsByOfferId(int offerId) {
    final offerTagMockData = OfferTagMockData();
    final offerTagList = <OfferTag>[
      offerTagMockData.data1,
      offerTagMockData.data1
    ];
    return Future.value(offerTagList);
  }
}
