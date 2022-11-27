import 'package:flutter/material.dart';

// TODO freezed導入したい
class OfferUi {
  OfferUi({
    required this.offerId,
    required this.enterpriseName,
    required this.startAt,
    required this.endAt,
    required this.address,
    required this.remuneration,
    required this.tags,
    required this.profileImage,
  });

  int offerId;
  String enterpriseName;
  DateTime startAt;
  DateTime endAt;
  String address;
  String remuneration;
  List<String> tags;
  Image profileImage;
}
