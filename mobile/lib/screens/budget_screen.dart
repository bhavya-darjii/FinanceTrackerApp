// lib/screens/budget_screen.dart
import 'package:flutter/material.dart';

class BudgetScreen extends StatelessWidget {
  final _limitController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Set Budget')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
              controller: _limitController,
              decoration: InputDecoration(labelText: 'Budget Limit'),
              keyboardType: TextInputType.number,
            ),
            SizedBox(height: 20),
            ElevatedButton(
              child: Text('Set Budget'),
              onPressed: () {
                // Handle budget setting
              },
            ),
          ],
        ),
      ),
    );
  }
}
