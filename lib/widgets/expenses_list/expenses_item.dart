import 'package:expenses_tracker/models/expense.dart';
import 'package:flutter/material.dart';

class ExpensesList extends StatelessWidget {

  const ExpensesList (this.expenses,{super.key,});

  final Expense expenses;

  @override
  Widget build(context) {
    return Card( child: Text(expenses.title),);
  }
}