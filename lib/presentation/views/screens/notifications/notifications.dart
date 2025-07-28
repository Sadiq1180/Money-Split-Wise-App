import 'package:flutter/material.dart';
import 'package:project_core/presentation/views/screens/notifications/widgets/payments_notifications.dart';
import 'package:project_core/shared/constants/app_colors.dart';
import 'package:project_core/shared/extensions/sized_box.dart';

class Notifications extends StatelessWidget {
  static const String routeName = "Notifications";
  const Notifications({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackground,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                      ),
                    ),
                    10.spaceX,
                    const Text(
                      "Notifications",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 15,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                20.spaceY,
                Text(
                  "Today",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                PaymentNotificationWidget(
                  primaryMessage:
                      'Ali Paid £300 for Football Tickets and some more ',
                  paidAmount: 300.0,
                  currency: '£',
                  owedAmount: 150.0,
                ),
                15.spaceY,
                PaymentNotificationWidget(
                  icon: Icons.coffee,
                  primaryMessage: 'Saad Paid £200 for Football Coffe',
                  paidAmount: 250,
                  currency: '£',
                  owedAmount: 83.33,
                ),
                15.spaceY,
                PaymentNotificationWidget(
                  icon: Icons.train,
                  primaryMessage: 'Saad Paid £2000 for Football Trip',
                  paidAmount: 2000,
                  currency: '£',
                  owedAmount: 1000.0,
                ),
                15.spaceY,
                PaymentNotificationWidget(
                  icon: Icons.coffee,
                  primaryMessage: 'Zaid Paid £250 for Football Coffe',
                  paidAmount: 250,
                  currency: '£',
                  owedAmount: 83.33,
                ),
                20.spaceY,
                Text(
                  "Jun 12",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                15.spaceY,
                PaymentNotificationWidget(
                  icon: Icons.train,
                  primaryMessage: 'Saad Paid £2000 for Football Trip',
                  paidAmount: 2000,
                  currency: '£',
                  owedAmount: 1000.0,
                ),
                15.spaceY,
                PaymentNotificationWidget(
                  icon: Icons.coffee,
                  primaryMessage: 'Zaid Paid £250 for Football Coffe',
                  paidAmount: 250,
                  currency: '£',
                  owedAmount: 83.33,
                ),
                20.spaceY,
                Text(
                  "Jun 07",
                  style: TextStyle(
                    fontSize: 15,
                    fontWeight: FontWeight.bold,
                    color: Colors.white,
                  ),
                ),
                15.spaceY,
                PaymentNotificationWidget(
                  icon: Icons.train,
                  primaryMessage: 'Saad Paid £2000 for Lunch',
                  paidAmount: 150,
                  currency: '£',
                  owedAmount: 75.0,
                ),
                15.spaceY,
              ],
            ),
          ),
        ),
      ),
    );
  }
}
