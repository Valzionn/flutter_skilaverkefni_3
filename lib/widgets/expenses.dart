import 'package:flutter/material.dart';
import 'package:flutter_skilaverkefni_3/models/expense.dart';
import 'package:flutter_skilaverkefni_3/widgets/new_expense.dart';
import 'expenses_list/expenses_list.dart';
import 'package:flutter_skilaverkefni_3/widgets/chart/chart.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() {
    return _ExpensesState();
  }
}

class _ExpensesState extends State<Expenses> {
  final List<Expense>_registeredExpenses = [
    Expense(
      title: 'Flutter Námskeið',
      amount: 3000,
      date: DateTime.now(),
      category:  Category.vinna,
    ),
    Expense(
      title: 'Bíóferð',
      amount: 2000,
      date: DateTime.now(),
      category: Category.skemmtun,
    ),
  ];

  void _openAddExpenseOverlay() {
    showModalBottomSheet(
      isScrollControlled: true,
      context: context,
      builder: (ctx) => NewExpense(onAddExpense: _addExpense),
    );
  }

  void _addExpense(Expense expense) {
    setState(() {
      _registeredExpenses.add(expense);
    });
  }

  void _removeExpense(Expense expense) {
    final expenseIndex = _registeredExpenses.indexOf(expense);
    setState(() {
      _registeredExpenses.remove(expense);
    });
    ScaffoldMessenger.of(context).clearSnackBars();
    ScaffoldMessenger.of(context).showSnackBar(
      SnackBar(
        duration: const Duration(seconds: 3),
        content: const Text('Expense Deleted'),
        action: SnackBarAction(
          label: 'Undo',
          onPressed: () {
            setState(() {
              _registeredExpenses.insert(expenseIndex, expense);
            });
          },
        ),
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    Widget mainContent = const Center(
      child: Text('no expenses found, start adding some'),
    );

    if (_registeredExpenses.isNotEmpty) {
      mainContent = ExpensesList(expenses: _registeredExpenses,
        onRemoveExpense: _removeExpense,
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Eyðslumælir'),
        actions: [
          IconButton(
            onPressed: _openAddExpenseOverlay, 
            icon: const Icon(Icons.add),
          )
        ],
      ),
      body: Column(
        children: [
          Chart(expenses: _registeredExpenses),
          Expanded(
            child: mainContent
          ),
        ],
      ),
    );
  }
}  