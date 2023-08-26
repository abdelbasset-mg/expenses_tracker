import 'package:expenses_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class ExpensesItem extends StatelessWidget {
  const ExpensesItem(
    this.expenses, {
    super.key,
  });

  final Expense expenses;

  @override
  Widget build(context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          vertical: 16,
          horizontal: 20,
        ),
        child: Column(
          children: [
            Text(expenses.title),
            const SizedBox(height: 8),
            Row(
              children: [
                Text( '\$${expenses.amount.toStringAsFixed(2)}'),
                const Spacer(),
                Row(
                  children: [
                    Icon(categoryIcon[expenses.category]),
                    const SizedBox(width: 5),
                    Text(expenses.formatedDate),
                  ],
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
