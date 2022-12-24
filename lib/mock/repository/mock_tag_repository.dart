import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../class/firestore/offer/tag.dart';
import '../../repository/offer/tag_base_repository.dart';
import '../class/tag_mock_data.dart';

final mockTagRepositoryProvider = Provider((ref) => MockTagRepository());

class MockTagRepository extends TagBaseRepository {
  @override
  Future<Tag> fetchTagById(int id) {
    final tagMockData = TagMockData();
    return Future.value(tagMockData.data1);
  }
}
