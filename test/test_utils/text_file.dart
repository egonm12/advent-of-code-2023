import 'dart:io';

Future<void> createTextFile(String filePath, int lines) async {
  final file = File(filePath);
  final sink = file.openWrite();

  for (var i = 0; i < lines; i++) {
    sink.writeln('Line ${i + 1}: This is a line.');
  }

  await sink.flush();
  await sink.close();
}

Future<void> deleteTextFile(String filePath) async {
  final file = File(filePath);

  if (file.existsSync()) {
    await file.delete();
  }
}
