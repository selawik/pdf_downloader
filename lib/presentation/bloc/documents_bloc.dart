import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:pdf_downloader/domain/model/document.dart';
import 'package:pdf_downloader/domain/model/document_status.dart';

part 'documents_event.dart';

part 'documents_state.dart';

part 'documents_bloc.freezed.dart';

class DocumentsBloc extends Bloc<DocumentsEvent, DocumentsState> {
  List<Document> documents = [];

  DocumentsBloc() : super(const DocumentsState.listIsReady(documents: [])) {
    on<_AddDocument>(_onAddDocument);
    on<_LoadList>(_onLoadList);
  }

  void _onAddDocument(_AddDocument event, Emitter emit) async {
    await Future.delayed(const Duration(seconds: 2));

    documents.add(
      Document(
        documentId: 1,
        name: 'Ticket ${documents.length + 1}',
        url: event.url,
        status: DocumentStatus.waitLoading,
      ),
    );

    emit(DocumentsState.listIsReady(documents: documents));
  }

  void _onLoadList(_LoadList event, Emitter emit) async {
    emit(const DocumentsState.isLoading());

    await Future.delayed(const Duration(seconds: 2));

    emit(const DocumentsState.empty());
  }
}
