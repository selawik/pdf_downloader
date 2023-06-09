import 'dart:async';
import 'dart:developer';
import 'dart:io';

import 'package:path_provider/path_provider.dart';
import 'package:pdf_downloader/data/data_source/document_remote_data_source.dart';
import 'package:pdf_downloader/data/data_source/documents_local_data_source.dart';
import 'package:pdf_downloader/domain/document_repository.dart';
import 'package:pdf_downloader/domain/model/document.dart';
import 'package:pdf_downloader/domain/model/document_status.dart';

class DocumentRepositoryImpl implements IDocumentRepository {
  final IDocumentsLocalDataSource _localDataSource;
  final IDocumentRemoteDataSource _remoteDataSource;

  DocumentRepositoryImpl({
    required IDocumentsLocalDataSource localDataSource,
    required IDocumentRemoteDataSource remoteDataSource,
  })  : _localDataSource = localDataSource,
        _remoteDataSource = remoteDataSource;

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

  @override
  Future<String?> downloadDocument({
    required String url,
    required StreamController<double> progressStream,
  }) async {
    try {
      var filePath = await _getFilePath();

      await _remoteDataSource.loadDocument(
        url: url,
        filePath: filePath,
        progressStream: progressStream,
      );

      return filePath;
    } catch (exception, stacktrace) {
      log(exception.toString(), stackTrace: stacktrace);
      return null;
    }
  }

  Future<String> _getFilePath() async {
    Directory appDocumentsDirectory =
        await getApplicationDocumentsDirectory(); // 1
    String appDocumentsPath = appDocumentsDirectory.path; // 2
    String filePath =
        '$appDocumentsPath/tickets/${DateTime.now().microsecondsSinceEpoch}'; // 3

    return filePath;
  }

  @override
  Future<bool?> updateDocument({required Document document}) async {
    try {
      return await _localDataSource.updateDocument(document: document);
    } catch (exception, stacktrace) {
      log(exception.toString(), stackTrace: stacktrace);
      return null;
    }
  }
}
