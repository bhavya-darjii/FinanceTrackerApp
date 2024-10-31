// lib/widgets/budget_summary.dart
import 'package:flutter/material.dart';

class BudgetSummary extends StatelessWidget {
  final double limit;
  final double spent;

  BudgetSummary({required this.limit, required this.spent});

  @override
  Widget build(BuildContext context) {
    double remaining = limit - spent;
    return Card(
      margin: EdgeInsets.all(16),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text('Budget Summary', style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold)),
            SizedBox(height: 8),
            Text('Limit: \$${limit.toStringAsFixed(2)}'),
            Text('Spent: \$${spent.toStringAsFixed(2)}'),
            Text('Remaining: \$${remaining.toStringAsFixed(2)}', style: TextStyle(color: remaining < 0 ? Colors.red : Colors.green)),
          ],
        ),
      ),
    );
  }
}
