import 'package:flutter/material.dart';
import 'package:flutter_skilaverkefni_3/widgets/expenses.dart';


void main() {
  runApp(
    MaterialApp(
      theme: ThemeData(useMaterial3: true),
      home: const Expenses(),
    ),
  );
}
