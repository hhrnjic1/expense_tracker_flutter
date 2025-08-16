import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:uuid/uuid.dart';

final formater = DateFormat.yMd();
const uuid = Uuid();

enum Category { food, travel, leasure, work }

const categortIcons = {
  Category.food: Icons.lunch_dining,
  Category.travel: Icons.flight,
  Category.leasure: Icons.movie,
  Category.work: Icons.work
};

class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4();

  final String id;
  final String title;
  final double amount;
  final DateTime date;
  final Category category;

  get formatedDate {
    return formater.format(date);
  }
}
