part of 'download_bloc.dart';

@freezed
class DownloadEvent with _$DownloadEvent {
  const factory DownloadEvent.download({required Document document}) = _Download;
}