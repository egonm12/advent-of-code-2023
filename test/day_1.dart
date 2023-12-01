import 'package:advent_of_code_2023/day_1.dart';
import 'package:test/test.dart';

void main() {
  test('day_1_1', () async {
    final result = await day_1_1('./test/input/day_1_1.txt');

    expect(result, equals(142));
  });
}
