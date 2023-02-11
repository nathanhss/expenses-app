import 'package:expenses/models/transaction.dart';
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

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
  final _transactions = [
    Transaction(
      id: 't2', 
      title: 'HeadPhone', 
      value: 310.76, 
      date: DateTime.now(),
    ),
    Transaction(
      id: 't2', 
      title: 'Credit Card', 
      value: 430.23, 
      date: DateTime.now(),
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(title),
      ),
      body: Column(
        children:<Widget> [
          SizedBox(
            child: Card(
              color: Colors.purple[300],
              elevation: 5,
              child: const Text('Graphic'),
            ),
          ),
          Column(
            children: _transactions.map((tr) {
              return Card(
                child: Row(
                  children: [
                    Container(
                      margin: const EdgeInsets.symmetric(
                        horizontal: 15,
                        vertical: 10
                      ),
                      decoration: BoxDecoration(
                        border: Border.all(
                          color: Colors.purple,
                          width: 2,
                        )
                      ),
                      padding: const EdgeInsets.all(10),
                      child: Text(
                        style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.purple
                        ),
                        'R\$${tr.value.toStringAsFixed(2)}'
                      ),
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          style: const TextStyle(
                            fontWeight: FontWeight.bold,
                            fontSize: 16
                          ),
                          tr.title
                        ),
                        Text(
                          style: const TextStyle( 
                            color: Colors.grey
                          ),
                          DateFormat('d MMM Y').format(tr.date)
                        )
                      ],
                    )
                  ],
                )
              );
            }).toList(),
          )
        ],
      ),
    );
  }
}