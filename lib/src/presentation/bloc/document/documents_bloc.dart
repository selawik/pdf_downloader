import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pdf_downloader/src/core/domain/document_repository.dart';
import 'package:pdf_downloader/src/core/domain/model/document.dart';
import 'package:pdf_downloader/src/core/domain/model/document_status.dart';

part 'documents_bloc.freezed.dart';
part 'documents_event.dart';
part 'documents_state.dart';

class DocumentsBloc extends Bloc<DocumentsEvent, DocumentsState> {
  final IDocumentRepository _repository;

  DocumentsBloc({
    required IDocumentRepository repository,
  })  : _repository = repository,
        super(const DocumentsState.listIsReady(documents: [])) {
    on<_AddDocument>(_onAddDocument);
    on<_LoadList>(_onLoadList);
    on<_UpdateDocument>(_onUpdateDocument);
  }

  Future<void> _onAddDocument(
    _AddDocument event,
    Emitter<DocumentsState> emit,
  ) async {
    final currentState = state;

    if (currentState is _ListIsReady) {
      final addedDocument = await _repository.saveDocument(
        name: 'Ticket ${currentState.documents.length + 1}',
        url: event.url,
        status: DocumentStatus.waitLoading,
      );

      if (addedDocument != null) {
        final newDocuments = currentState.documents + [addedDocument];

        emit(DocumentsState.listIsReady(documents: newDocuments));
      }
    }
  }

  Future<void> _onLoadList(
      _LoadList event, Emitter<DocumentsState> emit) async {
    emit(const DocumentsState.isLoading());

    final listResponse = await _repository.loadDocuments();

    if (listResponse != null) {
      if (listResponse.isEmpty) {
        emit(const DocumentsState.empty());
        return;
      }

      emit(DocumentsState.listIsReady(documents: listResponse.toList()));
    }
  }

  Future<void> _onUpdateDocument(
      _UpdateDocument event, Emitter<DocumentsState> emit) async {
    final updateResult =
        await _repository.updateDocument(document: event.document);

    if (updateResult == null) {
      return;
    }

    final listResponse = await _repository.loadDocuments();

    if (listResponse != null) {
      if (listResponse.isEmpty) {
        emit(const DocumentsState.empty());
        return;
      }

      emit(DocumentsState.listIsReady(documents: listResponse.toList()));
    }
  }
}
