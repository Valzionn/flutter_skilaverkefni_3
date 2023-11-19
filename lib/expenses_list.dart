import 'package:flutter/material.dart';
import 'package:flutter_skilaverkefni_3/models/expense.dart';

class ExpensesList extends StatelessWidget {
  const ExpensesList({super.key, required this.expenses, });

  final List<Expense> expenses;

  @override
  Widget build(BuildContext context) {
    return ListView.builder(itemBuilder: (ctx, index) => const Text(),);
  }
}