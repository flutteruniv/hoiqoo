import '../../class/firestore/offer/offer.dart';

class OfferMockData {
  final data1 = Offer(
    id: 1,
    createdAt: DateTime(2022, 12, 19, 10, 00),
    updatedAt: DateTime(2022, 12, 19, 10, 00),
    startAt: DateTime(2022, 12, 26, 12, 00),
    endAt: DateTime(2022, 12, 26, 15, 00),
    remuneration: 5000,
    enterpriseId: 1,
    catchPhrase: '初めての方歓迎',
    description: '主におむつ交換をしてもらいます。',
    applicantsNumber: 1,
    deadlineTime: DateTime(2022, 12, 25, 16, 59),
  );

  final data2 = Offer(
    id: 2,
    createdAt: DateTime(2022, 12, 19, 10, 00),
    updatedAt: DateTime(2022, 12, 19, 10, 00),
    startAt: DateTime(2022, 12, 26, 12, 00),
    endAt: DateTime(2022, 12, 26, 17, 00),
    remuneration: 8000,
    enterpriseId: 2,
    catchPhrase: '初めての方歓迎',
    description: '主におむつ交換をしてもらいます。',
    applicantsNumber: 1,
    deadlineTime: DateTime(2022, 12, 25, 16, 59),
  );

  final data3 = Offer(
    id: 3,
    createdAt: DateTime(2022, 12, 19, 10, 00),
    updatedAt: DateTime(2022, 12, 19, 10, 00),
    startAt: DateTime(2022, 12, 26, 12, 00),
    endAt: DateTime(2022, 12, 26, 15, 00),
    remuneration: 4500,
    enterpriseId: 3,
    catchPhrase: '初めての方歓迎',
    description: '主におむつ交換をしてもらいます。',
    applicantsNumber: 1,
    deadlineTime: DateTime(2022, 12, 25, 16, 59),
  );

  final data4 = Offer(
    id: 1,
    createdAt: DateTime(2022, 12, 19, 10, 00),
    updatedAt: DateTime(2022, 12, 19, 10, 00),
    startAt: DateTime(2022, 12, 27, 12, 00),
    endAt: DateTime(2022, 12, 27, 15, 00),
    remuneration: 5000,
    enterpriseId: 1,
    catchPhrase: '初めての方歓迎',
    description: '主におむつ交換をしてもらいます。',
    applicantsNumber: 1,
    deadlineTime: DateTime(2022, 12, 25, 16, 59),
  );
}
