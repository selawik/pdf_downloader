import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pdf_downloader/presentation/bloc/documents_bloc.dart';
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
      body: const DocumentsList(),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          var url = await showModalBottomSheet<String>(
            context: context,
            builder: (context) {
              return const AddDocumentModal();
            },
          );

          if (url != null) {
            BlocProvider.of<DocumentsBloc>(context).add(DocumentsEvent.addDocument(url));

            ScaffoldMessenger.of(context).showSnackBar(SnackBar(
              content: Text('Документ $url успешно добавлен!'),
              duration: const Duration(seconds: 2),
            ));
          }
        },
        label: const Text('Добавить'),
      ),
    );
  }
}
