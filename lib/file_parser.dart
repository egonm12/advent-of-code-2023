import 'dart:io';

Future<Map<int, String>> parseFileToMap(String filePath) async {
  final file = File(filePath);
  final lines = await file.readAsLines();
  final lineMap = <int, String>{};

  for (var i = 0; i < lines.length; i++) {
    lineMap[i + 1] = lines[i];
  }

  return lineMap;
}
