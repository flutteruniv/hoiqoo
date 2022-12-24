import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:intl/intl.dart';

final converterProvider = Provider<Converter>((ref) => Converter());

class Converter {
  // 勤務時間をUIで表示する形式に変換する
  String convertWorkingHoursForUi(DateTime startAt, DateTime endAt) {
    // 2桁で表示させる（例：0 -> 00, 5 -> 05）
    final startAtMinute = startAt.minute.toString().padLeft(2, '0');
    final endAtMinute = endAt.minute.toString().padLeft(2, '0');

    return '${startAt.year}/${startAt.month}/${startAt.day} ${startAt.hour}:$startAtMinute~${endAt.hour}:$endAtMinute';
  }

  // 報酬金額をUIで表示する形式に変換する
  String convertRemunerationForUi(int remuneration) {
    // 文字列の頭に¥をつけ、3桁でカンマ区切りを行う（例：25000 -> ¥25,000）
    final formatter = NumberFormat("¥#,###");
    return formatter.format(remuneration);
  }

  // タグ名をUIで表示する形式に変換する
  String convertTagNameForUi(String tagName) {
    return ('#$tagName');
  }
}
