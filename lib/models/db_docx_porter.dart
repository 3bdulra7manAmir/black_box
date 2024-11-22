import 'package:black_box/models/database/db.dart';
import 'package:isar/isar.dart';
import 'package:path_provider/path_provider.dart';
import 'package:docx_template/docx_template.dart';
import 'package:flutter/services.dart' show ByteData, rootBundle;
import 'dart:io';

class DbDocxPorter {
  late Isar isar;
  List<Map<String, dynamic>> rows = [];

  Future<void> initalizeDataBase() async {
    final dir = await getApplicationDocumentsDirectory();

    isar = await Isar.open([StorageSchema, ControlSchema], directory: dir.path);

    final List<Storage> items = await isar.storages.where().findAll();

    rows = items.map((item) {
      return {
        'Field1': item.id, // Replace with actual field name
        'Field2': item.brand, // Replace with actual field name
        // Add more fields as needed
      };
    }).toList();
  }

  Future<void> exportToDocx(List<Map<String, dynamic>> rows) async {
    // Load the template file as bytes
    final ByteData data = await rootBundle.load('assets/template.docx');
    final List<int> bytes = data.buffer.asUint8List();

    // Load the document template
    final docx = await DocxTemplate.fromBytes(bytes);

    // Prepare the data for insertion
    final content = Content();
    for (var i = 0; i < rows.length; i++) {
      //content.addAll('field${i + 1}', rows[i].toString());
    }

    // Generate the document with the updated content
    final docxBytes = await docx.generate(content);

    // Save the document to a file
    final dir = await getApplicationDocumentsDirectory();
    final file = File("${dir.path}/output.docx");
    file.writeAsBytesSync(docxBytes!);
  }
}
