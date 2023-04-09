import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class AddDocumentModal extends StatefulWidget {
  AddDocumentModal({Key? key}) : super(key: key);


  static String getClipboardData() {
    Clipboard.getData('text/plain');
    return '';
  }

  @override
  State<AddDocumentModal> createState() => _AddDocumentModalState();
}

class _AddDocumentModalState extends State<AddDocumentModal> {
  final GlobalKey<FormFieldState> fieldKey = GlobalKey();

  final TextEditingController urlController = TextEditingController();

  @override
  void initState() {
    super.initState();

    setUrlFromClipboard();
  }

  Future<void> setUrlFromClipboard() async {
    var result = await Clipboard.getData('text/plain');

    if (result?.text != null && result!.text!.endsWith('.pdf')) {
      urlController.text = result.text!;
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(height: 16),
          const Text('Добавить билет'),
          const SizedBox(height: 16),
          TextFormField(
            key: fieldKey,
            controller: urlController,
            autovalidateMode: AutovalidateMode.onUserInteraction,
            validator: validateField,
            decoration: const InputDecoration(
              labelText: 'Введите url',
              border: OutlineInputBorder(
                borderRadius: BorderRadius.all(
                  Radius.circular(16),
                ),
              ),
            ),
          ),
          const SizedBox(height: 16),
          ElevatedButton(
            onPressed: () => _onAddPressed(context),
            child: const Text('Добавить'),
          ),
        ],
      ),
    );
  }

  void _onAddPressed(BuildContext context) {
    if (fieldKey.currentState?.validate() ?? false) {
      Navigator.of(context).pop(urlController.text);
    }
  }

  String? validateField(String? value) {
    if (value == null) {
      return 'Введите url';
    }

    var url = Uri.tryParse(value);

    if (url == null ||
        !url.isAbsolute ||
        !url.path.toLowerCase().endsWith('.pdf')) {
      return 'Введите корректный Url';
    }

    return null;
  }
}
