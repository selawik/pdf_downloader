import 'dart:async';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pdf_downloader/domain/document_repository.dart';
import 'package:pdf_downloader/domain/model/document.dart';
import 'package:pdf_downloader/domain/model/document_status.dart';

part 'documents_event.dart';

part 'documents_state.dart';

part 'documents_bloc.freezed.dart';

class DocumentsBloc extends Bloc<DocumentsEvent, DocumentsState> {
  final IDocumentRepository _repository;

  List<Document> documents = [];

  DocumentsBloc({required IDocumentRepository repository})
      : _repository = repository,
        super(const DocumentsState.listIsReady(documents: [])) {
    on<_AddDocument>(_onAddDocument);
    on<_LoadList>(_onLoadList);
    on<_DownloadDocument>(_onDownloadDocument);
  }

  void _onAddDocument(_AddDocument event, Emitter emit) async {
    var addedDocument = await _repository.saveDocument(
      name: 'Ticket ${documents.length + 1}',
      url: event.url,
      status: DocumentStatus.waitLoading,
    );

    if (addedDocument != null) {
      documents.add(addedDocument);
    }

    emit(DocumentsState.listIsReady(documents: documents));
  }

  void _onLoadList(_LoadList event, Emitter emit) async {
    emit(const DocumentsState.isLoading());

    var listResponse = await _repository.loadDocuments();

    if (listResponse != null) {
      if (listResponse.isEmpty) {
        emit(const DocumentsState.empty());
        return;
      }

      documents = listResponse.toList();
      emit(DocumentsState.listIsReady(documents: listResponse.toList()));
    }
  }

  void _onDownloadDocument(_DownloadDocument event, Emitter emit) async {
    var progressController = StreamController<int>();

    documents.removeWhere(
        (element) => element.documentId == event.document.documentId);

    var newDocument = event.document.copyWith(
      downloadProgressStream: progressController,
      status: DocumentStatus.loading,
    );

    emit(
      DocumentsState.listIsReady(
        documents: [newDocument] + documents,
      ),
    );

    var filePath = await _repository.downloadDocument(
      url: event.document.url,
      progressStream: progressController,
    );

    if (filePath == null) {
      emit(
        DocumentsState.listIsReady(
          documents: [
                newDocument.copyWith(
                    status: DocumentStatus.waitLoading,
                    downloadProgressStream: null)
              ] +
              documents,
        ),
      );
    } else {
      emit(
        DocumentsState.listIsReady(
          documents: [
                newDocument.copyWith(
                  status: DocumentStatus.loaded,
                  downloadProgressStream: null,
                  filePath: filePath,
                )
              ] +
              documents,
        ),
      );
    }
  }
}
