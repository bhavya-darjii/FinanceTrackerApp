// lib/screens/home_screen.dart
import 'package:flutter/material.dart';
import '../models/transaction.dart';
import '../widgets/transaction_card.dart';

class HomeScreen extends StatelessWidget {
  final List<Transaction> transactions = [
    Transaction(id: 1, amount: 50.0, category: 'Food', description: 'Lunch', date: DateTime.now()),
    Transaction(id: 2, amount: 120.0, category: 'Transport', description: 'Bus pass', date: DateTime.now()),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Finance Tracker'),
        centerTitle: true,
      ),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(16.0),
            child: Text(
              'Recent Transactions',
              style: TextStyle(fontSize: 22, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: transactions.length,
              itemBuilder: (context, index) {
                return TransactionCard(transaction: transactions[index]);
              },
            ),
          ),
        ],
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: () {
          // Navigate to add expense screen
        },
      ),
    );
  }
}
