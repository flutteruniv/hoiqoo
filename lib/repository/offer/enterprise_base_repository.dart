import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../class/firestore/enterprise/enterprise.dart';

final enterpriseRepositoryProvider = Provider<EnterpriseBaseRepository>(
  (ref) => throw UnimplementedError('Provider was not initialized'),
);

abstract class EnterpriseBaseRepository {
  // 引数のidと一致する企業を返す
  Future<Enterprise> fetchEnterpriseById(int enterpriseId);
}
