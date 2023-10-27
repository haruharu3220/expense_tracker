import 'package:flutter/material.dart';

import '../../models/expense.dart';

class ExpenseItem extends StatelessWidget {
  const ExpenseItem(this.expense, {super.key});

  final Expense expense;

  @override
  Widget build(BuildContext context) {
    return Card(
      child: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 20,
          vertical: 16,
        ),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text(
            expense.title,
            style: Theme.of(context).textTheme.titleLarge,
          ),
          //https://api.flutter.dev/flutter/widgets/SizedBox-class.html
          const SizedBox(height: 4),
          Row(
            children: [
              Text('\$${expense.amount.toStringAsFixed(2)}'),
              //https://api.flutter.dev/flutter/widgets/Spacer-class.html
              const Spacer(),
              Row(children: [
                Icon(categoryIcons[expense.category]),
                const SizedBox(
                  width: 8,
                ),
                Text(expense.formattedDate),
              ]),
            ],
          ),
        ]),
      ),
    );
  }
}
