import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../class/firestore/enterprise/enterprise.dart';
import '../../repository/offer/enterprise_base_repository.dart';
import '../class/enterprise_mock_data.dart';

final mockEnterpriseRepositoryProvider =
    Provider((ref) => MockEnterpriseRepository());

class MockEnterpriseRepository extends EnterpriseBaseRepository {
  @override
  Future<Enterprise> fetchEnterpriseById(int enterpriseId) {
    final enterpriseMockData = EnterpriseMockData();
    return Future.value(enterpriseMockData.data2);
  }
}
