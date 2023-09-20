import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pdf_downloader/src/core/domain/model/document_status.dart';

part 'document.freezed.dart';

@freezed
class Document with _$Document {
  const factory Document({
    required int documentId,
    required String name,
    required String url,
    required DocumentStatus status,
    String? filePath,
  }) = _Document;
}
