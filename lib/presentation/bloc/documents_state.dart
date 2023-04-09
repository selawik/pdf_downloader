part of 'documents_bloc.dart';

@freezed
class DocumentsState with _$DocumentsState {
  const factory DocumentsState.listIsReady({required List<Document> documents}) =
      _ListIsReady;

  const factory DocumentsState.isLoading() = _isLoading;

  const factory DocumentsState.empty() = _isEmpty;
}
