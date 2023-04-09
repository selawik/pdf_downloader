import 'package:flutter/material.dart';

class AddDocumentModal extends StatelessWidget {
  AddDocumentModal({Key? key}) : super(key: key);

  final GlobalKey<FormFieldState> fieldKey = GlobalKey();

  final TextEditingController urlController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Column(
        children: [
          const SizedBox(height: 16),
          const Text('Добавить документ'),
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
