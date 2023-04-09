import 'package:pdf_downloader/domain/model/document.dart';
import 'package:pdf_downloader/domain/model/document_status.dart';

abstract class IDocumentsLocalDataSource {
  Future<Iterable<Document>?> loadDocument();

  Future<Document> saveDocument({
    required String url,
    required String name,
    required DocumentStatus status,
  });

  Future<bool> updateDocument({required Document document});
}
