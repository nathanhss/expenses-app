import 'package:flutter/material.dart';

class TransactionForm extends StatelessWidget {
  final void Function(String, double) onSubmit;

  const TransactionForm({super.key, required this.onSubmit});

  @override
  Widget build(BuildContext context) {
    final titleController = TextEditingController();
    final valueController = TextEditingController();

    return Card(
      elevation: 5,
      child: Padding(
        padding: const EdgeInsets.all(10.0),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              decoration: const InputDecoration(
                labelText: 'Title',
              ),
            ),
            TextField(
              controller: valueController,
              decoration: const InputDecoration(
                labelText: 'Expense value (R\$)',
              ),
            ),
            const Padding(
              padding: EdgeInsets.only(top: 10),
            ),
            ElevatedButton(
              onPressed: () {
                final title = titleController.text;
                final value = double.tryParse(valueController.text) ?? 0.0;
                onSubmit(title, value);
              },
              style: ElevatedButton.styleFrom(
                backgroundColor: Colors.purple,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(55),
                ),
              ),
              child: const Text("New Transaction"),
            ),
          ],
        ),
      ),
    );
  }
}
