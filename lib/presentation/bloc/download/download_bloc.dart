import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pdf_downloader/domain/document_repository.dart';
import 'package:pdf_downloader/domain/model/document.dart';
import 'package:pdf_downloader/domain/model/document_status.dart';

part 'download_event.dart';

part 'download_state.dart';

part 'download_bloc.freezed.dart';

class DownloadBloc extends Bloc<DownloadEvent, DownloadState> {
  final IDocumentRepository _repository;

  DownloadBloc({
    required Document document,
    required IDocumentRepository repository,
  })  : _repository = repository,
        super(DownloadState.documentReady(document: document)) {
    on<_Download>((event, emit) async {
      var progressController = StreamController<double>.broadcast(
        onListen: () {},
        onCancel: () {},
      );

      var newDocument = event.document.copyWith(
        downloadProgressStream: progressController,
        status: DocumentStatus.loading,
      );

      emit(DownloadState.documentReady(document: newDocument));

      var filePath = await _repository.downloadDocument(
        url: event.document.url,
        progressStream: progressController,
      );

      if (filePath == null) {
        var newDocument = event.document.copyWith(
            status: DocumentStatus.error, downloadProgressStream: null);

        emit(DownloadState.documentReady(document: newDocument));
      } else {
        var docWithFilePath = newDocument.copyWith(
          status: DocumentStatus.loaded,
          downloadProgressStream: null,
          filePath: filePath,
        );

        emit(DownloadState.documentReady(document: docWithFilePath));
      }
    });
  }
}
