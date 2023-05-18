import 'package:expense_app/models/category.dart';
import 'package:expense_app/models/expense.dart';
import 'package:expense_app/components/ExpenseList.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class ExpenseScreen extends StatefulWidget {
  const ExpenseScreen({super.key});

  @override
  State<ExpenseScreen> createState() => _ExpenseScreenState();
}

class _ExpenseScreenState extends State<ExpenseScreen> {
  final List<Expense> expenses = [
    Expense(
        title: "Buying Bicycle",
        amount: 80.0,
        date: DateTime.now(),
        category: Category.sport),
    Expense(
        title: "Buying Car",
        amount: 50.0,
        date: DateTime.now(),
        category: Category.sport),
    Expense(
        title: "Buying House",
        amount: 100.0,
        date: DateTime.now(),
        category: Category.sport),
    Expense(
        title: "Buying Properties",
        amount: 200.0,
        date: DateTime.now(),
        category: Category.sport),
  ];

  void showBottomModal() {
    showModalBottomSheet(context: context, builder: (ctx) => BottomModalForm());
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          title: const Text("Expense App"),
          actions: [
            IconButton(
                onPressed: () {
                  showBottomModal();
                },
                icon: const Icon(Icons.add))
          ],
        ),
        body: Column(children: [
          const Text("hello chart"),
          Expanded(child: ExpenseList(expenses: expenses))
        ]));
  }
}

class BottomModalForm extends StatefulWidget {
  const BottomModalForm({
    super.key,
  });

  @override
  State<BottomModalForm> createState() => _BottomModalFormState();
}

class _BottomModalFormState extends State<BottomModalForm> {
  final titleController = TextEditingController();
  final amountController = TextEditingController();

  Category category = Category.leisure;

  DateTime? dateTime;

  void _showDatePicker() async {
    final now = DateTime.now();
    final firstDate = DateTime(
        DateTime.now().year - 1, DateTime.now().month, DateTime.now().day);

    final date = await showDatePicker(
        context: context,
        initialDate: now,
        firstDate: firstDate,
        lastDate: now);

    setState(
      () {
        dateTime = date;
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: EdgeInsets.symmetric(vertical: 10, horizontal: 20),
        child: Column(
          children: [
            TextField(
              controller: titleController,
              maxLength: 50,
              decoration: const InputDecoration(label: Text("Title")),
            ),
            Row(children: [
              Expanded(
                child: TextField(
                  controller: amountController,
                  keyboardType: TextInputType.number,
                  inputFormatters: <TextInputFormatter>[
                    FilteringTextInputFormatter.digitsOnly
                  ],
                  decoration: const InputDecoration(
                      label: Text("Amount"), prefixText: '\$ '),
                ),
              ),
              const SizedBox(
                width: 16,
              ),
              Row(children: [
                Text(dateTime == null
                    ? "No Select Dated"
                    : formatter.format(dateTime!)),
                IconButton(
                    onPressed: () {
                      _showDatePicker();
                    },
                    icon: const Icon(Icons.date_range)),
              ]),
            ]),
            Row(
              children: [
                DropdownButton(
                    value: category,
                    items: Category.values
                        .map((e) =>
                            DropdownMenuItem(value: e, child: Text(e.name)))
                        .toList(),
                    onChanged: (value) {
                      if (value == null) {
                        return;
                      }
                      setState(() {
                        category = value;
                      });
                    }),
                TextButton(
                  child: Text("Submit"),
                  onPressed: () {},
                ),
                TextButton(
                  child: Text("Cancel"),
                  onPressed: () {
                    Navigator.pop(context);
                  },
                )
              ],
            ),
          ],
        ),
      ),
    );
  }
}
