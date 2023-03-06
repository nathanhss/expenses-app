import 'package:flutter/material.dart';
import '../models/transaction.dart';
import 'package:intl/intl.dart';

class TransactionList extends StatelessWidget {
  final List<Transaction> transactions;

  const TransactionList({super.key, required this.transactions});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 350,
      child: ListView(
        children: transactions.map((tr) {
          return Card(
            child: Row(
              children: [
                Container(
                  margin:
                      const EdgeInsets.symmetric(horizontal: 15, vertical: 10),
                  decoration: BoxDecoration(
                      border: Border.all(
                    color: Colors.purple,
                    width: 2,
                  )),
                  padding: const EdgeInsets.all(10),
                  child: Text(
                      style: const TextStyle(
                          fontWeight: FontWeight.bold,
                          fontSize: 20,
                          color: Colors.purple),
                      'R\$${tr.value.toStringAsFixed(2)}'),
                ),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 16),
                        tr.title),
                    Text(
                        style: const TextStyle(color: Colors.grey),
                        DateFormat.yMMMEd().format(tr.date))
                  ],
                )
              ],
            ),
          );
        }).toList(),
      ),
    );
  }
}
