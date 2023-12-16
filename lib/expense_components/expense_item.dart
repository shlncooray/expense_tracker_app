import 'package:expense_tracker_app/models/expense.dart';
import 'package:flutter/material.dart';

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
        child: Column(
          children: [
            Text(
              expense.title,
              style: TextStyle(
                  color: Theme.of(context).colorScheme.onPrimaryContainer),
            ),
            const SizedBox(height: 4),
            Row(
              children: [
                Text('LKR ${expense.amount.toStringAsFixed(2)}',
                    style: TextStyle(
                        color:
                            Theme.of(context).colorScheme.onPrimaryContainer)),
                const Spacer(),
                Row(
                  children: [
                    Icon(categoryIcons[expense.category]),
                    const SizedBox(width: 8),
                    Text(expense.formattedDate,
                        style: TextStyle(
                            color: Theme.of(context)
                                .colorScheme
                                .onPrimaryContainer)),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
