import 'package:pdf_downloader/domain/model/document.dart';
import 'package:pdf_downloader/domain/model/document_status.dart';

abstract class IDocumentRepository {
  Future<Iterable<Document>?> loadDocuments();

  Future<Document?> saveDocument({
    required String url,
    required String name,
    required DocumentStatus status,
  });
}
