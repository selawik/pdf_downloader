import 'dart:async';

import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pdf_downloader/domain/model/document_status.dart';

part 'document.freezed.dart';

@freezed
class Document with _$Document {
  const factory Document ({
    required int documentId,
    required String name,
    required String url,
    required DocumentStatus status,
    StreamController<double>? downloadProgressStream,
    String? filePath,
  }) = _Document;
}
