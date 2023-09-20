import 'dart:async';

abstract class IDocumentRemoteDataSource {
  Future<void> loadDocument({
    required String url,
    required String filePath,
    required StreamController<double> progressStream,
  });
}
