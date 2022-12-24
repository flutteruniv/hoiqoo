import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../class/firestore/offer/tag.dart';

final tagRepositoryProvider = Provider<TagBaseRepository>(
  (ref) => throw UnimplementedError('Provider was not initialized'),
);

abstract class TagBaseRepository {
  // 引数のidと一致するタグを返す
  Future<Tag> fetchTagById(int id);
}