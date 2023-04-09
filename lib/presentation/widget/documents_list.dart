import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pdf_downloader/domain/model/document_status.dart';
import 'package:pdf_downloader/presentation/bloc/documents_bloc.dart';

class DocumentsList extends StatelessWidget {
  const DocumentsList({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DocumentsBloc, DocumentsState>(
      listener: (context, state) {},
      builder: (context, state) {
        return state.when(
          empty: () => const Center(
            child: Text('Список пуст'),
          ),
          isLoading: () => const Center(child: CircularProgressIndicator()),
          listIsReady: (documents) {
            return ListView.separated(
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
                          const SizedBox(height: 4),
                          if (item.status == DocumentStatus.waitLoading)
                            const LinearProgressIndicator(
                              value: 0,
                              semanticsLabel: 'Linear progress indicator',
                            )
                          else if (item.downloadProgressStream != null)
                            StreamBuilder<double>(
                              builder: (context, AsyncSnapshot<double> snapshot) {
                                return LinearProgressIndicator(
                                  value: snapshot.data ?? 0,
                                  semanticsLabel: 'Linear progress indicator',
                                );
                              },
                              stream: item.downloadProgressStream?.stream,
                            )
                          else if (item.status == DocumentStatus.loaded)
                            const LinearProgressIndicator(
                              value: 1,
                              semanticsLabel: 'Linear progress indicator',
                            ),
                          const SizedBox(height: 4),
                          Text(item.status.title),
                        ],
                      ),
                    ),
                    const SizedBox(width: 16),
                    GestureDetector(
                      child: const Icon(Icons.pause),
                      onTap: () {
                        BlocProvider.of<DocumentsBloc>(context)
                            .add(DocumentsEvent.download(document: item));
                      },
                    ),
                  ],
                );
              },
              separatorBuilder: (context, index) {
                return const SizedBox(height: 16);
              },
            );
          },
        );
      },
    );
  }
}
