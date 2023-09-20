import 'package:drift/drift.dart';
import 'package:pdf_downloader/src/core/database/database.dart';
import 'package:pdf_downloader/src/core/domain/model/document.dart';
import 'package:pdf_downloader/src/core/domain/model/document_status.dart';

class DbProvider {
  final Database _db;

  DbProvider({
    required Database db,
  }) : _db = db;

  Future<Iterable<DocumentDbEntity>> getDocuments() async {
    return _db.documentDao.getDocuments();
  }

  Future<DocumentDbEntity> saveDocument({
    required String url,
    required String name,
    required DocumentStatus status,
  }) async {
    return _db.documentDao.saveDocument(
      DocumentTableCompanion.insert(
        name: name,
        url: url,
        documentStatus: status,
      ),
    );
  }

  Future<bool> updateDocument({
    required Document document,
  }) async {
    return _db.documentDao.updateDocument(
      DocumentTableCompanion.insert(
        documentId: Value(document.documentId),
        name: document.name,
        url: document.url,
        documentStatus: document.status,
        filePath: Value(document.filePath),
      ),
    );
  }
}
