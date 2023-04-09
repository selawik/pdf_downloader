import 'package:dio/dio.dart';
import 'package:flutter/material.dart';
import 'package:pdf_downloader/core/database/database.dart';
import 'package:pdf_downloader/core/database/db_provider.dart';
import 'package:pdf_downloader/data/data_source/drift_document_local_data_source.dart';
import 'package:pdf_downloader/data/data_source/http_document_remote_data_source.dart';
import 'package:pdf_downloader/data/document_repository_impl.dart';
import 'package:pdf_downloader/presentation/bloc/document/documents_bloc.dart';
import 'package:pdf_downloader/presentation/home_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    var repository = RepositoryProvider.of<DocumentRepositoryImpl>(context);

    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: BlocProvider<DocumentsBloc>(
        create: (context) => DocumentsBloc(
          repository: repository,
        )..add(const DocumentsEvent.loadList()),
        child: const HomePage(),
      ),
    );
  }
}
