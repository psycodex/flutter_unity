import 'dart:io';

import 'package:flutter/services.dart';
import 'package:path_provider/path_provider.dart';

Future<void> copyDatabaseFileFromAssets() async {
  // Search and create db file destination folder if not exist
  final documentsDirectory = await getApplicationDocumentsDirectory();
  final objectBoxDirectory = Directory(documentsDirectory.path + '/objectbox/');

  if (!objectBoxDirectory.existsSync()) {
    await objectBoxDirectory.create(recursive: true);
  }

  final dbFile = File(objectBoxDirectory.path + '/data.mdb');
  if (!dbFile.existsSync()) {
    // Get pre-populated db file.
    ByteData data = await rootBundle.load("assets/databases/data.mdb");

    // Copying source data into destination file.
    await dbFile.writeAsBytes(data.buffer.asUint8List());
  }
}
