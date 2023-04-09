import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pdf_downloader/domain/model/document.dart';
import 'package:pdf_downloader/domain/model/document_status.dart';
import 'package:pdf_downloader/presentation/bloc/documents_bloc.dart';
import 'package:pdf_downloader/presentation/widget/download_progress_indicator.dart';

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
                            const DownloadProgressIndicator.notStarted()
                          else if (item.downloadProgressStream != null)
                            StreamBuilder<double>(
                              builder:
                                  (context, AsyncSnapshot<double> snapshot) {
                                return DownloadProgressIndicator(
                                  value: snapshot.data ?? 0,
                                );
                              },
                              stream: item.downloadProgressStream?.stream,
                            )
                          else if (item.status == DocumentStatus.loaded)
                            const DownloadProgressIndicator.complete(),
                          const SizedBox(height: 4),
                          Text(item.status.title),
                        ],
                      ),
                    ),
                    const SizedBox(width: 16),
                    GestureDetector(
                      onTap: () => onItemButtonTap(context, item),
                      child: Icon(_getIconDataForDocumentStatus(item.status)),
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

  void onItemButtonTap(BuildContext context, Document doc) {
    if (doc.status == DocumentStatus.waitLoading) {
      BlocProvider.of<DocumentsBloc>(context).add(
        DocumentsEvent.download(document: doc),
      );
    }
  }

  IconData _getIconDataForDocumentStatus(DocumentStatus status) {
    if (status == DocumentStatus.waitLoading) {
      return Icons.download;
    }

    if (status == DocumentStatus.loading) {
      return Icons.pause;
    }

    return Icons.cloud;
  }
}
