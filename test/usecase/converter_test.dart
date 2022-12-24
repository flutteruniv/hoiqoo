import 'package:flutter_test/flutter_test.dart';
import 'package:hoiqoo/usecase/converter.dart';

void main() {
  test('分が1桁', () {
    final startAt = DateTime(2022, 12, 18, 10, 0);
    final endAt = DateTime(2022, 12, 18, 16, 5);

    final converter = Converter();
    final result = converter.toWorkingHours(startAt, endAt);

    expect(result, '2022/12/18 10:00~16:05');
  });

  test('分が2桁', () {
    final startAt = DateTime(2022, 12, 18, 10, 10);
    final endAt = DateTime(2022, 12, 18, 16, 55);

    final converter = Converter();
    final result = converter.toWorkingHours(startAt, endAt);

    expect(result, '2022/12/18 10:10~16:55');
  });

  test('時間が1桁&2桁', () {
    final startAt = DateTime(2022, 12, 18, 8, 00);
    final endAt = DateTime(2022, 12, 18, 16, 00);

    final converter = Converter();
    final result = converter.toWorkingHours(startAt, endAt);

    expect(result, '2022/12/18 8:00~16:00');
  });
}
