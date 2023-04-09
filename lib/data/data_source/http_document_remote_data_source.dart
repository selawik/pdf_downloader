import 'dart:async';
import 'dart:io';

import 'package:dio/dio.dart';
import 'package:path_provider/path_provider.dart';
import 'package:pdf_downloader/data/data_source/document_remote_data_source.dart';

class HttpDocumentRemoteDataSource implements IDocumentRemoteDataSource {
  final Dio _dioClient;

  HttpDocumentRemoteDataSource({required Dio dioClient})
      : _dioClient = dioClient;

  @override
  Future<void> loadDocument({
    required String url,
    required String filePath,
    required StreamController<int> progressStream,
  }) async {
    await _dioClient.download(url, filePath,
        onReceiveProgress: (count, total) {
      progressStream.add(((count / total) * 100).toInt());
    });
  }
}
