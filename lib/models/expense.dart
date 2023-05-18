import "package:expense_app/models/category.dart";
import "package:intl/intl.dart";
import "package:uuid/uuid.dart";

  var formatter= DateFormat.yMd();
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

    String get formattedDate{
      return formatter.format(date);
    }
}
