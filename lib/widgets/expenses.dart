import 'package:expenses_tracker/models/expense.dart';
import 'package:flutter/material.dart';
import 'package:expenses_tracker/widgets/expenses_list/expenses_list.dart';
import 'package:expenses_tracker/widgets/new_expenses.dart';

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

  void _openAddExpensesModal() {
    showModalBottomSheet(
      isScrollControlled: true  ,
      context: context,
      builder: (cxt) {
        return NewExpenses( onAddExpense: _addExpenses ,);
      },
    );
  }

  void _addExpenses (Expense expense){
    setState(() {
      _registeredExpenses.add(expense);
    });
  }

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      appBar: AppBar(
        title: const Text('Expenses Tracker'),
        actions: [
          IconButton(
            onPressed: _openAddExpensesModal,
            icon: const Icon(Icons.add),
          )
        ],
      ),
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