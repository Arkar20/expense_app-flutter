import 'package:expense_app/screens/expense.dart';
import 'package:flutter/material.dart';

var kcolorSchema =
    ColorScheme.fromSeed(seedColor: const Color.fromARGB(255, 17, 99, 4));

var kcolorDarkSchema =
    ColorScheme.fromSeed(
      brightness: Brightness.dark,
      seedColor: Color.fromARGB(255, 2, 69, 20));
void main() {
  runApp(MaterialApp(
      themeMode: ThemeMode.system,
      darkTheme: ThemeData.dark()
          .copyWith(useMaterial3: true, 
          colorScheme: kcolorDarkSchema,
            cardTheme: const CardTheme().copyWith(
              color: kcolorDarkSchema.secondaryContainer,
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8)),
               elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  backgroundColor: kcolorDarkSchema.secondaryContainer,
                  foregroundColor: kcolorDarkSchema.onSecondaryContainer,
                  )),
          ),
          
      theme: ThemeData().copyWith(
          useMaterial3: true,
          colorScheme: kcolorSchema,
          appBarTheme: const AppBarTheme().copyWith(
            backgroundColor: kcolorSchema.onPrimaryContainer,
            foregroundColor: kcolorSchema.primaryContainer,
          ),
          cardTheme: const CardTheme().copyWith(
              color: kcolorSchema.secondaryContainer,
              margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 8)),
          elevatedButtonTheme: ElevatedButtonThemeData(
              style: ElevatedButton.styleFrom(
                  backgroundColor: kcolorSchema.primaryContainer,
                  foregroundColor: kcolorSchema.onPrimaryContainer,
                  )),
          textTheme: const TextTheme(
              titleLarge: TextStyle(
                  fontWeight: FontWeight.w500, fontStyle: FontStyle.italic))),
          
      home: ExpenseScreen()));
}
