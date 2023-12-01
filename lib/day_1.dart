import 'package:advent_of_code_2023/file_parser.dart';
import 'package:collection/collection.dart';

Future<int> day_1_1(String filePath) async {
  final input = await parseFileToMap(filePath);

  bool canParseToInt(String value) => int.tryParse(value) != null;

  return input.values.fold<int>(0, (previousValue, line) {
    final chars = line.split('');

    final first = chars.firstWhereOrNull(canParseToInt);
    final last = chars.lastWhereOrNull(canParseToInt);

    return previousValue + int.parse('$first$last');
  });
}
