class Converter {
  // 勤務時間をUIで表示する形式に変換
  String toWorkingHours(DateTime startAt, DateTime endAt) {
    // 2桁で表示させる（例：0 -> 00, 5 -> 05）
    final startAtMinute = startAt.minute.toString().padLeft(2, '0');
    final endAtMinute = endAt.minute.toString().padLeft(2, '0');

    return '${startAt.year}/${startAt.month}/${startAt.day} ${startAt.hour}:$startAtMinute~${endAt.hour}:$endAtMinute';
  }
}
