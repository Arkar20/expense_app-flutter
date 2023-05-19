import 'package:expense_app/screens/expense.dart';
import 'package:flutter/material.dart';

var kcolorSchema= ColorScheme.fromSeed(
  seedColor:  Color.fromARGB(255, 17, 99, 4)
);
void main() {
  runApp(MaterialApp(
    theme: ThemeData().copyWith(useMaterial3: true,
    colorScheme: kcolorSchema,
    appBarTheme: AppBarTheme().copyWith(
      backgroundColor: kcolorSchema.onPrimaryContainer,
      foregroundColor: kcolorSchema.primaryContainer,
    ),
    cardTheme: CardTheme().copyWith(
        color: kcolorSchema.secondaryContainer,
        margin:const EdgeInsets.symmetric(horizontal:16,vertical: 8)
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor:kcolorSchema.primaryContainer
      )
    ),
    textTheme: TextTheme(
      titleLarge: TextStyle(
        fontWeight: FontWeight.w500,
        fontStyle: FontStyle.italic
      )
    )
    ),
    home:  ExpenseScreen()
  ));
}
