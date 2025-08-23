import 'package:expenses_tracker_flutter/widget/chart/chart.dart';
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
        title: 'Movies',
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
        useSafeArea: true,
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
    final expenseIndex = _registeredExpenses.indexOf(expense);
    setState(() {
      _registeredExpenses.remove(expense);
    });
    ScaffoldMessenger.of(context).removeCurrentSnackBar();
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
      duration: const Duration(seconds: 3),
      content: const Text('Expense deleted.'),
      action: SnackBarAction(
          label: 'Undo',
          onPressed: () {
            setState(() {
              _registeredExpenses.insert(expenseIndex, expense);
            });
          }),
    ));
  }

  @override
  Widget build(BuildContext context) {
    final deviceWidth = MediaQuery.of(context).size.width;
    final deviceHeight = MediaQuery.of(context).size.height;

    var landscape = (deviceHeight > deviceWidth) ? true : false;
    Widget mainContent =
        const Center(child: Text('No expenses added, start adding expenses'));

    if (_registeredExpenses.isNotEmpty) {
      mainContent = ExpensesList(
        expensesList: _registeredExpenses,
        onRemoveExpense: _removeExpense,
      );
    }

    return Scaffold(
      appBar: AppBar(
        title: const Text('Flutter Expense Tracker'),
        actions: [
          IconButton(onPressed: _openAddExpenseModal, icon: Icon(Icons.add))
        ],
      ),
      body: landscape
          ? Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Chart(expenses: _registeredExpenses),
                Expanded(child: mainContent)
              ],
            )
          : Row(
              children: [
                Expanded(child: Chart(expenses: _registeredExpenses)),
                Expanded(child: mainContent)
              ],
            ),
    );
  }
}
