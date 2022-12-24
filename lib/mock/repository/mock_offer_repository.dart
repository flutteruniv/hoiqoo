import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../class/firestore/offer/offer.dart';
import '../../repository/offer/offer_base_repository.dart';
import '../class/offer_mock_data.dart';

final mockOfferRepositoryProvider = Provider((ref) => MockOfferRepository());

class MockOfferRepository implements OfferBaseRepository {
  @override
  Future<List<Offer>> fetchAvailableOffers() {
    final offerMockData = OfferMockData();
    final offerList = <Offer>[
      offerMockData.data1,
      offerMockData.data2,
      offerMockData.data3,
      offerMockData.data4,
    ];
    return Future.value(offerList);
  }
}
