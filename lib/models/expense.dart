import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

const uuid = Uuid();

final  formatter = DateFormat.yMd()  ;

enum Category { food , transport , leisure , work }

const categoryIcon = {
  Category.food : Icons.fastfood ,
  Category.transport : Icons.directions_car ,
  Category.leisure : Icons.sports_soccer ,
  Category.work : Icons.work ,
};

class Expense {

Expense({
  required this.title,
  required this.amount,
  required this.date,
  required this.category,
  }) : id = uuid.v4() ;

final String title ;
final double amount ;
final DateTime date ;
final String id ;
final Category category ;

String get formatedDate => formatter.format(date) ;


}


class ExpenseBucket {

  ExpenseBucket({
    required this.category,
    required this.expenses,
  });

  ExpenseBucket.forCategory(List<Expense> allExpenses, this.category) : expenses = allExpenses.where((expense) => expense.category == category).toList() ;

  final Category category;
  final List<Expense> expenses;

  double get totalExpenses {
    double sum = 0 ;
    for(final expense in expenses){
      sum += expense.amount ;
    }
    return sum ;
  }
}