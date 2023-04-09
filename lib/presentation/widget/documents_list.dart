import 'package:flutter/material.dart';

class DocumentsList extends StatelessWidget {
  final List<String> documentUrls;

  const DocumentsList({Key? key, required this.documentUrls}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemCount: documentUrls.length,
      itemBuilder: (context, index) {
        var item = documentUrls[index];

        return Row(
          children: [
            const Icon(Icons.train),
            const SizedBox(width: 16),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(item),
                  const Text('Ожидает загрузки'),
                ],
              ),
            ),
            const SizedBox(width: 16),
            const Icon(Icons.pause),
          ],
        );
      },
    );
  }
}
