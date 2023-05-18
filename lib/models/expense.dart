import "package:expense_app/models/category.dart";
import "package:uuid/uuid.dart";

  var uuid = Uuid();

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
}
