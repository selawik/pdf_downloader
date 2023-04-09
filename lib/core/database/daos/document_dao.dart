import 'package:drift/drift.dart';
import 'package:pdf_downloader/core/database/database.dart';
import 'package:pdf_downloader/core/database/table/document_table.dart';

part 'document_dao.g.dart';

@DriftAccessor(tables: [DocumentTable])
class DocumentDao extends DatabaseAccessor<Database> with _$DocumentDaoMixin {
  DocumentDao(Database db) : super(db);

  Future<DocumentDbEntity> saveDocument(DocumentTableCompanion document) async {
    return await into(documentTable).insertReturning(document);
  }

  Future<bool> updateDocument(DocumentTableCompanion document) async {
    return await update(documentTable).replace(document);
  }

  Future<Iterable<DocumentDbEntity>> getDocuments() async {
    return await select(documentTable).get();
  }
}
