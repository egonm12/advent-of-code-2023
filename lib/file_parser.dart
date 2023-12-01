import 'dart:io';

Future<Map<int, String>> parseFileToMap(String filePath) async {
  final file = File(filePath);
  final lines = await file.readAsLines();
  final Map<int, String> lineMap = {};

  for (int i = 0; i < lines.length; i++) {
    lineMap[i + 1] = lines[i];
  }

  return lineMap;
}
