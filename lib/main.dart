import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:pdf_downloader/add_document_modal.dart';
import 'package:pdf_downloader/documents_list.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        useMaterial3: true,
        primarySwatch: Colors.blue,
      ),
      home: const MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  const MyHomePage({super.key, required this.title});

  final String title;

  @override
  State<MyHomePage> createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        centerTitle: false,
        title: const Text('Хранение билетов'),
      ),
      body: const DocumentsList(
        documentUrls: ['urls'],
      ),
      floatingActionButton: FloatingActionButton.extended(
        onPressed: () async {
          var url = await showModalBottomSheet<String>(
            context: context,
            builder: (context) {
              return AddDocumentModal();
            },
          );

          if (url != null) {
            log(url);
          }
        },
        label: const Text('Добавить'),
      ),
    );
  }
}
