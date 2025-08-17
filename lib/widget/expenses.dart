import 'package:expenses_tracker_flutter/widget/expenses_list/expenses_list.dart';
import 'package:expenses_tracker_flutter/models/expense.dart';
import 'package:expenses_tracker_flutter/widget/new_expense.dart';
import 'package:flutter/material.dart';

class Expenses extends StatefulWidget {
  const Expenses({super.key});

  @override
  State<Expenses> createState() => _ExpensesState();
}

class _ExpensesState extends State<Expenses> {
  final List<Expense> _registeredExpenses = [
    Expense(
        title: 'Groceries',
        amount: 27.99,
        date: DateTime(2025, 8, 15),
        category: Category.food),
    Expense(
        title: 'Car',
        amount: 59.99,
        date: DateTime(2025, 8, 12),
        category: Category.leasure),
    Expense(
        title: 'Bus Ticket',
        amount: 1.99,
        date: DateTime(2025, 8, 03),
        category: Category.work),
  ];

  void _openAddExpenseModal() {
    showModalBottomSheet(
        isScrollControlled: true,
        context: context,
        builder: (ctx) => NewExpense(
              onAddExpense: _addExpense,
            ));
  }

  void _addExpense(Expense expense) {
    setState(() {
      _registeredExpenses.add(expense);
    });
  }

  void _removeExpense(Expense expense) {
    setState(() {
      _registeredExpenses.remove(expense);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Expense Tracker'),
        actions: [
          IconButton(onPressed: _openAddExpenseModal, icon: Icon(Icons.add))
        ],
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('The chart'),
          Expanded(
              child: ExpensesList(
            expensesList: _registeredExpenses,
            onRemoveExpense: _removeExpense,
          ))
        ],
      ),
    );
  }
}
