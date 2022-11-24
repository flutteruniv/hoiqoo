import 'package:flutter/material.dart';
import 'package:hoiqoo/class/Enterprise.dart';

class OfferMockData {
  final enterprise1 = Enterprise(
    enterpriseId: 1,
    createdAt: DateTime(2022, 11, 24, 12, 00),
    updatedAt: DateTime(2022, 11, 24, 12, 00),
    name: "びじゅつ保育園",
    profileImage: Image.asset(
      "assets/images/oden_icon.jpg",
    ),
  );

  final enterprise2 = Enterprise(
    enterpriseId: 2,
    createdAt: DateTime(2022, 11, 24, 12, 00),
    updatedAt: DateTime(2022, 11, 24, 12, 00),
    name: "あおぞら保育園",
    profileImage: Image.asset(
      "assets/images/oden_icon.jpg",
    ),
  );
}
