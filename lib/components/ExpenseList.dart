import 'package:flutter/material.dart';
import 'package:expense_app/models/expense.dart';

class ExpenseList extends StatelessWidget {
  const ExpenseList({
    super.key,
    required this.expenses,
  });

  final List<Expense> expenses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemCount: expenses.length, itemBuilder:(context, index) {
        return Text(expenses[index].title);
    }, );
  }
}