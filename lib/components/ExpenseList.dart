import 'package:flutter/material.dart';
import 'package:expense_app/models/expense.dart';
import 'package:expense_app/models/category.dart';

const categoryIcons= {
  Category.leisure:Icons.dining,
  Category.sport:Icons.bike_scooter,
  Category.travel:Icons.air,
  Category.work:Icons.work
};

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
            date: expenses[index].formattedDate,
            category: expenses[index].category,
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
    required this.category,
  });

 final String title;
 final String amount;
 final String date;
 final Category category;

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
                       Icon(categoryIcons[category]),
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
