import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:project_core/presentation/base_widgets/privacy_policy.dart';
import 'package:project_core/presentation/views/screens/onboarding_screens/login_screen.dart';
import 'package:project_core/presentation/views/screens/onboarding_screens/widgets/app_header.dart';
import 'package:project_core/presentation/views/screens/onboarding_screens/widgets/social_buttons.dart';
import 'package:project_core/shared/constants/app_assets.dart';
import 'package:project_core/shared/constants/app_colors.dart';
import 'package:project_core/shared/extensions/sized_box.dart';
import 'package:project_core/shared/navigation/navigation.dart';

class WelcomeScreen extends StatelessWidget {
  static const String routeName = "Welcome_Screen";
  const WelcomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.dark,
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              const AppHeader(),
              40.spaceY,

              // Facebook Login Button
              CustomElevatedButton(
                onPressed: () {},
                isOutlined: true,
                text: 'Login with Facebook',
                imageAsset: AppAssets.facebook,
                iconBackgroundColor: const Color(0xFF1877F2),
                backgroundColor: Colors.grey[600]!,
              ),
              16.spaceY,

              // Google Login Button
              CustomElevatedButton(
                onPressed: () {},
                isOutlined: true,
                text: 'Login with Google',
                imageAsset: AppAssets.google,
                iconBackgroundColor: const Color(0xFFDB4437),
                backgroundColor: Colors.grey[600]!,
              ),
              16.spaceY,

              // Apple Login Button
              CustomElevatedButton(
                onPressed: () {},
                isOutlined: true,
                text: 'Login with Apple',
                imageAsset: AppAssets.applewhite,
                backgroundColor: Colors.grey[600]!,
              ),
              16.spaceY,

              // Email Login Button
              CustomElevatedButton(
                onPressed: () {
                  Navigation.pushNamed(LoginScreen.routeName);
                },
                isOutlined: true,
                text: 'Login with email',
                imageAsset: AppAssets.email,
                backgroundColor: Colors.grey[600]!,
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: TermsPolicyWidget(),
    );
  }
}
