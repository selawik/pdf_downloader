import 'package:drift/drift.dart';
import 'package:pdf_downloader/src/core/domain/model/document_status.dart';

@DataClassName('DocumentDbEntity')
class DocumentTable extends Table {
  IntColumn get documentId => integer().autoIncrement()();
  TextColumn get name => text()();
  TextColumn get url => text()();
  IntColumn get documentStatus => intEnum<DocumentStatus>()();
  TextColumn get filePath => text().nullable()();
}
