import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pdf_downloader/src/core/application.dart';
import 'package:pdf_downloader/src/core/data/data_source/drift_document_local_data_source.dart';
import 'package:pdf_downloader/src/core/data/data_source/http_document_remote_data_source.dart';
import 'package:pdf_downloader/src/core/data/document_repository_impl.dart';
import 'package:pdf_downloader/src/core/database/database.dart';
import 'package:pdf_downloader/src/core/database/db_provider.dart';

void main() {
  final repository = DocumentRepositoryImpl(
    remoteDataSource: HttpDocumentRemoteDataSource(
      dioClient: Dio(),
    ),
    localDataSource: DriftDocumentLocalDataSource(
      dbProvider: DbProvider(db: Database()),
    ),
  );

  runApp(
    RepositoryProvider.value(
      value: repository,
      child: const MyApp(),
    ),
  );
}
