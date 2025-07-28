import 'package:flutter/material.dart';
import 'package:project_core/presentation/views/screens/home_screen/widgets/expenses_widget.dart';

class AllExpanses extends StatelessWidget {
  const AllExpanses({super.key});

  @override
  Widget build(BuildContext context) {
    return ExpenseCardsWidget(
      expenses: [
        ExpenseData(
          title: 'Durdle Door Trip',
          amount: 90.00,
          originalAmount: 460.00,
          subtitle: 'Your Split',
        ),
        ExpenseData(
          title: 'Football Tickets',
          amount: 45.00,
          originalAmount: 225.00,
          subtitle: 'Your Split',
        ),
        ExpenseData(
          title: 'Dinner',
          amount: 25.00,
          originalAmount: 100.00,
          subtitle: 'Your Split',
        ),
      ],
    );
  }
}
