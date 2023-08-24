import 'package:expenses_tracker/models/expense.dart';
import 'package:flutter/material.dart';
import 'package:expenses_tracker/expenses_list.dart';

class Expenses extends StatefulWidget {
  const Expenses ( {super.key});
  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {

  final List<Expense> _registeredExpenses = [
    Expense(
      title: 'Groceries',
      amount: 15.99,
      date: DateTime.now(),
      category: Category.food,
    ),
    Expense(
      title: 'Uber',
      amount: 12.69,
      date: DateTime.now(),
      category: Category.transport,
    ),
  ];

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      body: 
      Column(
        children: [
          const Text('chart'),
          Expanded(child: ExpensesList(expenses: _registeredExpenses) ),
        ],
      ),
    );
  }
}