import 'dart:developer';

import 'package:pdf_downloader/data/data_source/documents_local_data_source.dart';
import 'package:pdf_downloader/domain/document_repository.dart';
import 'package:pdf_downloader/domain/model/document.dart';
import 'package:pdf_downloader/domain/model/document_status.dart';

class DocumentRepositoryImpl implements IDocumentRepository {
  final IDocumentsLocalDataSource _localDataSource;

  DocumentRepositoryImpl({required IDocumentsLocalDataSource localDataSource})
      : _localDataSource = localDataSource;

  @override
  Future<Iterable<Document>?> loadDocuments() async {
    try {
      return await _localDataSource.loadDocument();
    } catch (exception, stacktrace) {
      log(exception.toString(), stackTrace: stacktrace);
      return null;
    }
  }

  @override
  Future<Document?> saveDocument({
    required String url,
    required String name,
    required DocumentStatus status,
  }) async {
    try {
      return await _localDataSource.saveDocument(
          url: url, name: name, status: status);
    } catch (exception, stacktrace) {
      log(exception.toString(), stackTrace: stacktrace);
      return null;
    }
  }
}
