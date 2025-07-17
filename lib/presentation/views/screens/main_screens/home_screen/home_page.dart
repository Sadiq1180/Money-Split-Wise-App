import 'package:flutter/material.dart';
import 'package:project_core/presentation/views/screens/main_screens/home_screen/widgets/home_header.dart';
import 'package:project_core/presentation/views/screens/main_screens/home_screen/widgets/recent_bills.dart';
import 'package:project_core/presentation/views/screens/main_screens/login_screen/widgets/divider.dart';
import 'package:project_core/shared/constants/app_colors.dart';

class HomePage extends StatelessWidget {
  static const String routeName = "HomePage";
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.dark,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                //Greetings with icon
                HomeGreeting(),
                //Divider
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: Divider(color: AppColors.darkGrey),
                ),
                ////Recnt bills and add bills roww
                RecentAndAddBills(),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
