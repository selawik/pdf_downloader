import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pdf_downloader/src/core/domain/document_repository.dart';
import 'package:pdf_downloader/src/core/domain/model/document.dart';
import 'package:pdf_downloader/src/core/domain/model/document_status.dart';
import 'package:pdf_downloader/src/presentation/bloc/document/documents_bloc.dart';

part 'download_bloc.freezed.dart';
part 'download_event.dart';
part 'download_state.dart';

class DownloadBloc extends Bloc<DownloadEvent, DownloadState> {
  final IDocumentRepository _repository;
  final DocumentsBloc _documentsBloc;

  DownloadBloc({
    required Document document,
    required IDocumentRepository repository,
    required DocumentsBloc documentsBloc,
  })  : _documentsBloc = documentsBloc,
        _repository = repository,
        super(DownloadState.documentReady(document: document)) {
    on<_Download>(_onDownload);
  }

  Future<void> _onDownload(_Download event, Emitter<DownloadState> emit) async {
    final progressController = StreamController<double>.broadcast(
      onListen: () {},
      onCancel: () {},
    );

    final newDocument = event.document.copyWith(status: DocumentStatus.loading);

    emit(DownloadState.documentReady(
      document: newDocument,
      downloadProgressStream: progressController,
    ));

    final filePath = await _repository.downloadDocument(
      url: event.document.url,
      progressStream: progressController,
    );

    await progressController.close();

    if (filePath == null) {
      final newDocument = event.document.copyWith(status: DocumentStatus.error);

      emit(DownloadState.documentReady(document: newDocument));
    } else {
      final docWithFilePath = newDocument.copyWith(
        status: DocumentStatus.loaded,
        filePath: filePath,
      );

      _documentsBloc.add(DocumentsEvent.updateDocument(docWithFilePath));

      emit(DownloadState.documentReady(document: docWithFilePath));
    }
  }
}
