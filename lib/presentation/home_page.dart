import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pdf_downloader/presentation/bloc/document/documents_bloc.dart';
import 'package:pdf_downloader/presentation/widget/add_document_modal.dart';
import 'package:pdf_downloader/presentation/widget/documents_list.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('Хранение билетов'),
      ),
      body: const DocumentsView(),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          final documentsBloc = BlocProvider.of<DocumentsBloc>(context);
          final url = await showModalBottomSheet<String>(
            context: context,
            builder: (context) {
              return const AddDocumentModal();
            },
          );

          if (url != null) {
            documentsBloc.add(DocumentsEvent.addDocument(url));
          }
        },
        label: const Text('Добавить'),
      ),
    );
  }
}
