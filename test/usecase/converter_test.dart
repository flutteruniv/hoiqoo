import 'package:flutter_test/flutter_test.dart';
import 'package:hoiqoo/usecase/converter.dart';

void main() {
  final converter = Converter();

  group('convertWorkingHoursForUi()のテスト', () {
    test('分が1桁', () {
      final startAt = DateTime(2022, 12, 18, 10, 0);
      final endAt = DateTime(2022, 12, 18, 16, 5);

      final result = converter.convertWorkingHoursForUi(startAt, endAt);
      expect(result, '2022/12/18 10:00~16:05');
    });

    test('分が2桁', () {
      final startAt = DateTime(2022, 12, 18, 10, 10);
      final endAt = DateTime(2022, 12, 18, 16, 55);

      final result = converter.convertWorkingHoursForUi(startAt, endAt);
      expect(result, '2022/12/18 10:10~16:55');
    });

    test('時間が1桁&2桁', () {
      final startAt = DateTime(2022, 12, 18, 8, 00);
      final endAt = DateTime(2022, 12, 18, 16, 00);

      final result = converter.convertWorkingHoursForUi(startAt, endAt);
      expect(result, '2022/12/18 8:00~16:00');
    });
  });

  group('convertRemunerationForUi()のテスト', () {
    test('3桁の金額', () {
      final result = converter.convertRemunerationForUi(999);
      expect(result, '¥999');
    });

    test('4桁の金額', () {
      final result = converter.convertRemunerationForUi(1000);
      expect(result, '¥1,000');
    });

    test('5桁の金額', () {
      final result = converter.convertRemunerationForUi(99999);
      expect(result, '¥99,999');
    });
  });
}
