import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../class/firestore/enterprise/enterprise.dart';

// // 引数のidと一致する企業を返すプロバイダー
final enterpriseByIdProvider = Provider.family<Future<Enterprise>, int>(
  (ref, enterpriseId) =>
      ref.watch(enterpriseRepositoryProvider).fetchEnterpriseById(enterpriseId),
);

final enterpriseRepositoryProvider = Provider<EnterpriseBaseRepository>(
  (ref) => throw UnimplementedError('Provider was not initialized'),
);

abstract class EnterpriseBaseRepository {
  // 引数のidと一致する企業を返す
  Future<Enterprise> fetchEnterpriseById(int enterpriseId);
}
