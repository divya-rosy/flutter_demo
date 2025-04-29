import 'package:expense_tracker/expenses.dart';
import 'package:flutter/material.dart';

//import 'package:expense_tracker/main.dart';


void main() {
  runApp(
    MaterialApp(
    darkTheme: ThemeData(
  colorScheme: ColorScheme.fromSeed(
    seedColor: Colors.deepPurple,
    brightness: Brightness.dark,
  ).copyWith(background: Colors.grey[850]!),
),
     home: const Expenses(), // This widget is the root of your application.
  ),);
}