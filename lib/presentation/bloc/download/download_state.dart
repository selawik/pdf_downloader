

part of 'download_bloc.dart';

@freezed
class DownloadState with _$DownloadState {
  const factory DownloadState.idl() = _Idl;

  const factory DownloadState.documentReady({
    required Document document,
  }) = _DocumentReady;
}