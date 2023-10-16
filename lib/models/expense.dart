import 'package:flutter/material.dart';
import 'package:uuid/uuid.dart';
import 'package:intl/intl.dart';

final formatter = DateFormat.yMd();
const uuid = Uuid();

//''で囲まれていないことに注意
enum Category { food, travel, leisure, work }

const categoryIcons = {
  Category.food: Icons.lunch_dining,
  Category.travel: Icons.flight_takeoff,
  Category.leisure: Icons.movie,
  Category.work: Icons.work,
};

//経費クラス
class Expense {
  Expense({
    required this.title,
    required this.amount,
    required this.date,
    required this.category,
  }) : id = uuid.v4(); //イニシャライザーリスト　IDはユニークなID(uuid)を自動生成

  final String id; //1,2,3,
  final String title;
  final double amount; //money
  final DateTime date;
  final Category category; //Category型

  get formattedDate {
    return formatter.format(date);
  }
}
