import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:pdf_downloader/src/core/data/document_repository_impl.dart';
import 'package:pdf_downloader/src/core/domain/model/document.dart';
import 'package:pdf_downloader/src/core/domain/model/document_status.dart';
import 'package:pdf_downloader/src/presentation/bloc/document/documents_bloc.dart';
import 'package:pdf_downloader/src/presentation/bloc/download/download_bloc.dart';
import 'package:pdf_downloader/src/presentation/widget/download_progress_indicator.dart';

class DocumentsView extends StatelessWidget {
  const DocumentsView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<DocumentsBloc, DocumentsState>(
      listener: (context, state) {
        //TODO (@selawik) come back snackbar
        // state.mapOrNull(
        //   documentAdded: (documents) {
        //     ScaffoldMessenger.of(context).showSnackBar(
        //       const SnackBar(
        //         content: Text('Документ успешно добавлен!'),
        //         duration: Duration(seconds: 2),
        //       ),
        //     );
        //   },
        // );
      },
      builder: (context, state) {
        return state.when(
          empty: () => const Center(child: Text('Список пуст')),
          isLoading: () => const Center(child: CircularProgressIndicator()),
          listIsReady: (documents) => DocumentsListView(documents: documents),
        );
      },
    );
  }
}

class DocumentsListView extends StatelessWidget {
  final List<Document> documents;

  const DocumentsListView({
    required this.documents,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return ListView.separated(
      padding: const EdgeInsets.only(bottom: 88, left: 16, right: 16),
      itemCount: documents.length,
      itemBuilder: (context, index) {
        final item = documents[index];

        return DocumentListItem(document: item);
      },
      separatorBuilder: (context, index) {
        return const SizedBox(height: 16);
      },
    );
  }
}

class DocumentListItem extends StatelessWidget {
  final Document document;

  const DocumentListItem({
    required this.document,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    final repository = RepositoryProvider.of<DocumentRepositoryImpl>(context);
    final documentBloc = BlocProvider.of<DocumentsBloc>(context);

    return BlocProvider<DownloadBloc>(
      create: (context) => DownloadBloc(
        document: document,
        repository: repository,
        documentsBloc: documentBloc,
      ),
      child: BlocBuilder<DownloadBloc, DownloadState>(
        builder: (context, state) {
          return state.maybeWhen(
            orElse: Container.new,
            documentReady: (document, downloadProgressStream) {
              return Row(
                children: [
                  const Icon(Icons.train),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(document.name),
                        const SizedBox(height: 4),
                        if (document.status == DocumentStatus.waitLoading ||
                            document.status == DocumentStatus.error)
                          const DownloadProgressIndicator.notStarted()
                        else if (downloadProgressStream != null)
                          StreamBuilder<double>(
                            builder: (context, snapshot) {
                              return DownloadProgressIndicator(
                                value: snapshot.data ?? 0,
                              );
                            },
                            stream: downloadProgressStream.stream,
                          )
                        else if (document.status == DocumentStatus.loaded)
                          const DownloadProgressIndicator.complete(),
                        const SizedBox(height: 4),
                        Text(document.status.title),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16),
                  GestureDetector(
                    onTap: () => onItemButtonTap(context, document),
                    child: Icon(
                      _getIconDataForDocumentStatus(document.status),
                    ),
                  ),
                ],
              );
            },
          );
        },
      ),
    );
  }

  void onItemButtonTap(BuildContext context, Document doc) {
    if (doc.status == DocumentStatus.waitLoading ||
        doc.status == DocumentStatus.error) {
      BlocProvider.of<DownloadBloc>(context).add(
        DownloadEvent.download(document: doc),
      );
    }
  }

  IconData _getIconDataForDocumentStatus(DocumentStatus status) {
    if (status == DocumentStatus.waitLoading ||
        status == DocumentStatus.error) {
      return Icons.download;
    }

    if (status == DocumentStatus.loading) {
      return Icons.pause;
    }

    return Icons.cloud;
  }
}
