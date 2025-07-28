import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:project_core/presentation/base_widgets/keyboard_aware.dart';
import 'package:project_core/presentation/views/screens/onboarding_screens/widgets/app_header.dart';
import 'package:project_core/presentation/views/screens/onboarding_screens/widgets/social_buttons.dart';
import 'package:project_core/presentation/widgets/custom_label_field.dart';
import 'package:project_core/presentation/widgets/rich_text_button.dart';
import 'package:project_core/shared/constants/app_assets.dart';
import 'package:project_core/shared/constants/app_colors.dart';
import 'package:project_core/shared/constants/app_textstyle.dart';
import 'package:project_core/shared/extensions/sized_box.dart';
import 'package:project_core/shared/navigation/navigation.dart';
import 'package:project_core/shared/shared.dart';

class SignUpScreen extends StatelessWidget {
  static const String routeName = "Sign_Up";
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController usernameController = TextEditingController();
    final TextEditingController passwordController = TextEditingController();

    return Scaffold(
      backgroundColor: AppColors.dark,
      body: KeyboardAware(
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const AppHeader(),

                30.spaceY,
                LabeledTextField(
                  label: "Enter your name",
                  hint: "Name",
                  controller: nameController,
                ),
                10.spaceY,
                LabeledTextField(
                  label: 'Enter e-mail',
                  hint: 'Enter your e-mail',
                  controller: usernameController,
                ),
                10.spaceY,
                LabeledTextField(
                  label: 'Password',
                  hint: 'Enter your Password',
                  controller: passwordController,
                  isPassword: true,
                ),
                30.spaceY,
                SizedBox(
                  width: double.infinity,
                  child: CustomElevatedButton(
                    onPressed: () {
                      // Navigation.pushNamed(MainScreen.routeName);
                    },
                    isOutlined: false,
                    text: 'Create Account',
                  ),
                ),
                30.spaceY,
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: BottomTextAction(
        prefixText: "Already have an account? ",
        actionText: "Sign In",
        onTap: () {
          Navigation.pop(rootNavigator: false);
        },
      ),
    );
  }
}
