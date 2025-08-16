import 'package:expenses_tracker_flutter/models/expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> registeredExpenses = [
    Expense(title: 'Groceries', amount: 27.99, date: DateTime(2025,8,15), category: Category.food),
    Expense(title: 'Car', amount: 59.99, date: DateTime(2025,8,12), category: Category.leasure),
    Expense(title: 'Bus Ticket', amount: 1.99, date: DateTime(2025,8,03), category: Category.work),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: const [
          Text('The chart'),
          Text('Expenses list')
        ],
      ),
    );
  }
}