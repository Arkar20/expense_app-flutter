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
    return ListView.builder(
      itemCount: expenses.length,
      itemBuilder: (context, index) {
        return ExpenseCard(
            title: expenses[index].title,
            amount:'\$ ${expenses[index].amount.toStringAsFixed(2)}',
            date: expenses[index].date.toIso8601String()
            );
      },
    );
  }
}

class ExpenseCard extends StatelessWidget {
  const ExpenseCard({
    super.key,
    required this.title,
    required this.amount,
    required this.date,
  });

 final String title;
 final String amount;
 final String date;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 20),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.start,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Text(amount),
                  Row(
                    children: [
                      const Icon(Icons.abc_outlined),
                     const SizedBox(width: 10,),
                      Text(date)
                    ],
                  )
                ],
              )
            ],
          )),
    );
  }
}
