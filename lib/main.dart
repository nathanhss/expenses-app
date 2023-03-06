import 'package:expenses/components/transaction_user.dart';
import 'package:flutter/material.dart';

main() {
  runApp(const ExpensesApp());
}

class ExpensesApp extends StatelessWidget {
  const ExpensesApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: MyHomePage(),
    );
  }
}

// ignore: use_key_in_widget_constructors
class MyHomePage extends StatelessWidget {
  final String title = 'Personal Expenses';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: SingleChildScrollView(
        child: Column(
          children: <Widget>[
            SizedBox(
              child: Card(
                color: Colors.purple[300],
                elevation: 5,
                child: const Text('Graphic'),
              ),
            ),
            const TransactionUser(),
          ],
        ),
      ),
    );
  }
}
