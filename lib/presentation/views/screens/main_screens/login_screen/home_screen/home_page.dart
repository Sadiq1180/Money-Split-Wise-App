import 'package:flutter/material.dart';
import 'package:project_core/presentation/views/screens/main_screens/login_screen/home_screen/widgets/home_header.dart';
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
          // padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [HomeGreeting()],
          ),
        ),
      ),
    );
  }
}
