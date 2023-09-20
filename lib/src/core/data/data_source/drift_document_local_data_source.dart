import 'package:pdf_downloader/src/core/data/data_source/documents_local_data_source.dart';
import 'package:pdf_downloader/src/core/database/db_provider.dart';
import 'package:pdf_downloader/src/core/domain/model/document.dart';
import 'package:pdf_downloader/src/core/domain/model/document_status.dart';

class DriftDocumentLocalDataSource implements IDocumentsLocalDataSource {
  final DbProvider _dbProvider;

  DriftDocumentLocalDataSource({required DbProvider dbProvider})
      : _dbProvider = dbProvider;

  @override
  Future<Iterable<Document>> loadDocument() async {
    final documentsEntities = await _dbProvider.getDocuments();

    return documentsEntities.map(
      (entity) => Document(
        documentId: entity.documentId,
        name: entity.name,
        url: entity.url,
        status: entity.documentStatus,
      ),
    );
  }

  @override
  Future<Document> saveDocument({
    required String url,
    required String name,
    required DocumentStatus status,
  }) async {
    final savedDocument =
        await _dbProvider.saveDocument(url: url, name: name, status: status);

    return Document(
      documentId: savedDocument.documentId,
      name: savedDocument.name,
      url: savedDocument.url,
      status: savedDocument.documentStatus,
    );
  }

  @override
  Future<bool> updateDocument({required Document document}) async {
    return _dbProvider.updateDocument(document: document);
  }
}
