import 'dart:io';

import 'package:advent_of_code_2023/file_parser.dart';
import 'package:test/test.dart';

import 'test_utils/text_file.dart';

void main() {
  group('parseFileToMap', () {
    final filePath = './test/temp.txt';

    tearDown(() async {
      await deleteTextFile(filePath);
    });

    test('can parse', () async {
      const lines = 4;

      await createTextFile(filePath, lines);

      final parsed = await parseFileToMap(filePath);

      expect(parsed.length, equals(lines));
    });

    test('can parse empty', () async {
      await createTextFile(filePath, 0);

      final parsed = await parseFileToMap(filePath);

      expect(parsed.isEmpty, isTrue);
    });

    test('throws when file is not found', () async {
      expect(
        () async => await parseFileToMap(filePath),
        throwsA(isA<PathNotFoundException>()),
      );
    });
  });
}
