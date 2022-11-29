import 'dart:io';

// TODO freezed導入したい
class Enterprise {
  Enterprise({
    required this.enterpriseId,
    required this.createdAt,
    required this.updatedAt,
    required this.name,
    required this.profileImage,
  });

  int enterpriseId;
  DateTime createdAt;
  DateTime updatedAt;
  String name;
  File profileImage;
}