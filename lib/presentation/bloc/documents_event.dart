part of 'documents_bloc.dart';

@freezed
class DocumentsEvent with _$DocumentsEvent {
  const factory DocumentsEvent.addDocument(String url) = _AddDocument;
  const factory DocumentsEvent.loadList() = _LoadList;
  const factory DocumentsEvent.download({required Document document}) = _DownloadDocument;
}