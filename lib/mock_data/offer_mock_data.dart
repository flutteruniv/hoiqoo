import 'package:hoiqoo/class/Offer.dart';

class OfferMockData {
  final offer1 = Offer(
    offerId: 1,
    createdAt: DateTime(2022, 11, 24, 12, 00),
    updatedAt: DateTime(2022, 11, 24, 12, 00),
    startAt: DateTime(2022, 11, 25, 12, 00),
    endAt: DateTime(2022, 11, 25, 15, 00),
    remuneration: 5000,
    enterpriseId: 1,
    catchPhrase: "アットホームな雰囲気",
    description: "テスト",
    applicantsNumber: 3,
    deadlineTime: DateTime(2022, 11, 24, 18, 00),
  );

  final offer2 = Offer(
    offerId: 2,
    createdAt: DateTime(2022, 11, 24, 12, 00),
    updatedAt: DateTime(2022, 11, 24, 12, 00),
    startAt: DateTime(2022, 11, 26, 10, 00),
    endAt: DateTime(2022, 11, 26, 15, 00),
    remuneration: 8000,
    enterpriseId: 2,
    catchPhrase: "ブランクある方歓迎",
    description: "テスト",
    applicantsNumber: 1,
    deadlineTime: DateTime(2022, 11, 24, 18, 00),
  );

  final offer3 = Offer(
    offerId: 3,
    createdAt: DateTime(2022, 11, 24, 12, 00),
    updatedAt: DateTime(2022, 11, 24, 12, 00),
    startAt: DateTime(2022, 11, 26, 12, 00),
    endAt: DateTime(2022, 11, 26, 17, 00),
    remuneration: 10000,
    enterpriseId: 1,
    catchPhrase: "アットホームな雰囲気",
    description: "テスト",
    applicantsNumber: 2,
    deadlineTime: DateTime(2022, 11, 25, 12, 00),
  );
}
