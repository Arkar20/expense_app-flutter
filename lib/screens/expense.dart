import 'package:expense_app/models/category.dart';
import 'package:expense_app/models/expense.dart';
import 'package:flutter/material.dart';

class ExpenseScreen extends StatefulWidget {
  const ExpenseScreen({super.key});

  @override
  State<ExpenseScreen> createState() => _ExpenseScreenState();
}

class _ExpenseScreenState extends State<ExpenseScreen> {

  final List<Expense> expenses= [
    Expense(title: "Buying Bicycle", amount: 80.0, date: DateTime.now(), category: Category.sport),
    Expense(title: "Buying Car", amount: 50.0, date: DateTime.now(), category: Category.sport),
    Expense(title: "Buying House", amount: 100.0, date: DateTime.now(), category: Category.sport),
    Expense(title: "Buying Properties", amount: 200.0, date: DateTime.now(), category: Category.sport),
  ];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: ListView.builder(itemCount: expenses.length, itemBuilder:(context, index) {
          return Text(expenses[index].title);
      }, )
    );
  }
}
