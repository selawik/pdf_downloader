import 'package:flutter/material.dart';
import 'package:pdf_downloader/data/document_repository_impl.dart';
import 'package:pdf_downloader/presentation/bloc/document/documents_bloc.dart';
import 'package:pdf_downloader/presentation/home_page.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MyApp extends StatelessWidget {
  const MyApp({super.key});

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
