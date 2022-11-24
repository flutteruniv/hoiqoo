// TODO freezed導入したい
class Offer {
  Offer({
    required this.offerId,
    required this.createdAt,
    required this.updatedAt,
    required this.startAt,
    required this.endAt,
    required this.remuneration,
    required this.enterpriseId,
    required this.catchPhrase,
    required this.description,
    required this.applicantsNumber,
    required this.deadlineTime,
  });

  String offerId;
  DateTime createdAt;
  DateTime updatedAt;
  DateTime startAt;
  DateTime endAt;
  int remuneration;
  int enterpriseId;
  String catchPhrase;
  String description;
  int applicantsNumber;
  DateTime deadlineTime;
}
