import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pdf_downloader/presentation/bloc/documents_bloc.dart';

class DocumentsList extends StatelessWidget {
  const DocumentsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DocumentsBloc, DocumentsState>(
      listener: (context, state) {

      },
      builder: (context, state) {
        return state.when(
          empty: () => const Center(
            child: Text('Список пуст'),
          ),
          isLoading: () => const Center(child: CircularProgressIndicator()),
          listIsReady: (documents) {
            return ListView.builder(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              itemCount: documents.length,
              itemBuilder: (context, index) {
                var item = documents[index];

                return Row(
                  children: [
                    const Icon(Icons.train),
                    const SizedBox(width: 16),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(item.name),
                          Text(item.status.title),
                        ],
                      ),
                    ),
                    const SizedBox(width: 16),
                    const Icon(Icons.pause),
                  ],
                );
              },
            );
          },
        );
      },
    );
  }
}
