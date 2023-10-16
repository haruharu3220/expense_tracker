import 'package:uuid/uuid.dart';

const uuid = Uuid();

enum Category { food, travel, leisure, work }

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
  final Category category;
}
