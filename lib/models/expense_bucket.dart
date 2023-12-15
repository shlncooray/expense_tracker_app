import 'package:expense_tracker_app/models/expense.dart';

class ExpenseBucket {
  const ExpenseBucket({
    required this.category,
    required this.expenses,
  });

  final Category category;
  final List<Expense> expenses;

  // #TODO - Add Alternative constructor function

  // #TODO - Implement getter to return total expenses of a expense bucket
}
