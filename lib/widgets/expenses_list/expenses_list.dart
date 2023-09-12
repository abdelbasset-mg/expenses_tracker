import 'package:flutter/material.dart';
import 'package:expenses_tracker/models/expense.dart';
import 'package:expenses_tracker/widgets/expenses_list/expenses_item.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.expenses, required this.onDeleteExpense});

  final List<Expense> expenses;
  final Function(Expense expense) onDeleteExpense;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        itemCount: expenses.length,
        itemBuilder: (cxt, index) => Dismissible(
              onDismissed:(direction){
                onDeleteExpense(expenses[index]);
              } ,
              key: ValueKey(expenses[index]),
              child: ExpensesItem(expenses[index]),
            ));
  }
}
