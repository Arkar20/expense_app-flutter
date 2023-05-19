import "package:expense_app/models/category.dart";
import "package:intl/intl.dart";
import "package:uuid/uuid.dart";
import 'package:flutter/material.dart';

  var formatter= DateFormat.yMd();
  var uuid = Uuid();

const categoryIcons= {
  Category.leisure:Icons.dining,
  Category.sport:Icons.bike_scooter,
  Category.travel:Icons.air,
  Category.work:Icons.work
};
class Expense {
  final String title;
  final double amount;
  final DateTime date;
  final Category category;
  final String id;

  Expense(
      {required this.title,
      required this.amount,
      required this.date,
      required this.category})
      : id = uuid.v4();

    String get formattedDate{
      return formatter.format(date);
    }
}
