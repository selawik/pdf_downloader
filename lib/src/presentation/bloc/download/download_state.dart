

part of 'download_bloc.dart';

@freezed
class DownloadState with _$DownloadState {
  const factory DownloadState.documentReady({
    required Document document,
    StreamController<double>? downloadProgressStream,
  }) = _DocumentReady;
}
