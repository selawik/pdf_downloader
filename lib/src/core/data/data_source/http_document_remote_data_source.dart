import 'dart:async';

import 'package:dio/dio.dart';
import 'package:pdf_downloader/src/core/data/data_source/document_remote_data_source.dart';

class HttpDocumentRemoteDataSource implements IDocumentRemoteDataSource {
  final Dio _dioClient;

  HttpDocumentRemoteDataSource({required Dio dioClient})
      : _dioClient = dioClient;

  @override
  Future<void> loadDocument({
    required String url,
    required String filePath,
    required StreamController<double> progressStream,
  }) async {
    await _dioClient.download(url, filePath, onReceiveProgress: (count, total) {
      progressStream.add(count / total);
    });
  }
}
