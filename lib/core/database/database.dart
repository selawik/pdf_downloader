// To open the database, add these imports to the existing file defining the
// database class. They are used to open the database.
import 'dart:io';

import 'package:drift/drift.dart';
import 'package:drift/native.dart';
import 'package:path/path.dart' as p;
import 'package:path_provider/path_provider.dart';
import 'package:pdf_downloader/core/database/daos/document_dao.dart';
import 'package:pdf_downloader/core/database/table/document_table.dart';
import 'package:pdf_downloader/domain/model/document_status.dart';

part 'database.g.dart';

@DriftDatabase(tables: [
  DocumentTable,
], daos: [
  DocumentDao
])
class Database extends _$Database {
  // we tell the database where to store the data with this constructor
  Database() : super(_openConnection());

  // you should bump this number whenever you change or add a table definition.
  // Migrations are covered later in the documentation.
  @override
  int get schemaVersion => 1;
}

LazyDatabase _openConnection() {
  // the LazyDatabase util lets us find the right location for the file async.
  return LazyDatabase(() async {
    // put the database file, called db.sqlite here, into the documents folder
    // for your app.
    final dbFolder = await getApplicationDocumentsDirectory();
    final file = File(p.join(dbFolder.path, 'db.sqlite'));
    return NativeDatabase.createInBackground(file);
  });
}
