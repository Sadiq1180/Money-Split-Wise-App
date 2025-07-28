// expense_cards_widget.dart
import 'package:flutter/material.dart';
import 'package:project_core/presentation/views/screens/home_screen/widgets/expense_card.dart';

class ExpenseData {
  final String title;
  final double amount;
  final double originalAmount;
  final String subtitle;

  ExpenseData({
    required this.title,
    required this.amount,
    required this.originalAmount,
    required this.subtitle,
  });
}

class ExpenseCardsWidget extends StatelessWidget {
  final List<ExpenseData> expenses;

  const ExpenseCardsWidget({Key? key, required this.expenses})
    : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 165,
      child: ListView.builder(
        scrollDirection: Axis.horizontal,
        padding: EdgeInsets.symmetric(horizontal: 16),
        itemCount: expenses.length,
        itemBuilder: (context, index) {
          final item = expenses[index];
          return ExpenseCard(
            title: item.title,
            amount: item.amount,
            originalAmount: item.originalAmount,
            subtitle: item.subtitle,
          );
        },
      ),
    );
  }
}
