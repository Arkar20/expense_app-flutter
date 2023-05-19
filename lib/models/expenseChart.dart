import 'package:expense_app/models/category.dart';
import 'package:expense_app/models/expense.dart';

class ExpenseChart {
  const ExpenseChart({required this.expenses, required this.category});
  final List<Expense> expenses;
  final Category category;

  ExpenseChart.forCategory(List<Expense> allExpenses, this.category)
      : expenses = allExpenses
            .where((element) => element.category == category)
            .toList();

  double get totalExpenses {
    double sum = 0.0;

    for (final expense in this.expenses) {
      sum == expense.amount;
    }

    return sum;
  }
}
