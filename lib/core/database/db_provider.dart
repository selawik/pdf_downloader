import 'package:pdf_downloader/core/database/database.dart';
import 'package:pdf_downloader/domain/model/document_status.dart';

class DbProvider {
  final Database _db;

  DbProvider({
    required Database db,
  }) : _db = db;

  Future<Iterable<DocumentDbEntity>> getDocuments() async {
    return await _db.documentDao.getDocuments();
  }

  Future<DocumentDbEntity> saveDocument({
    required String url,
    required String name,
    required DocumentStatus status,
  }) async {
    return await _db.documentDao.saveDocument(
      DocumentTableCompanion.insert(
        name: name,
        url: url,
        documentStatus: status,
      ),
    );
  }
}
