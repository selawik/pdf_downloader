import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pdf_downloader/domain/document_repository.dart';
import 'package:pdf_downloader/domain/model/document.dart';
import 'package:pdf_downloader/domain/model/document_status.dart';
import 'package:pdf_downloader/presentation/bloc/document/documents_bloc.dart';

part 'download_event.dart';

part 'download_state.dart';

part 'download_bloc.freezed.dart';

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

  void _onDownload(_Download event, Emitter emit) async {
    var progressController = StreamController<double>.broadcast(
      onListen: () {},
      onCancel: () {},
    );

    var newDocument = event.document.copyWith(status: DocumentStatus.loading);

    emit(DownloadState.documentReady(
      document: newDocument,
      downloadProgressStream: progressController,
    ));

    var filePath = await _repository.downloadDocument(
      url: event.document.url,
      progressStream: progressController,
    );

    if (filePath == null) {
      var newDocument = event.document.copyWith(status: DocumentStatus.error);

      emit(DownloadState.documentReady(document: newDocument));
    } else {
      var docWithFilePath = newDocument.copyWith(
          status: DocumentStatus.loaded, filePath: filePath);

      _documentsBloc.add(DocumentsEvent.updateDocument(docWithFilePath));

      emit(DownloadState.documentReady(document: docWithFilePath));
    }
  }
}
