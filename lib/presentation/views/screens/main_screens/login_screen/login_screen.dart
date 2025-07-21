import 'package:flutter/material.dart';
import 'package:project_core/presentation/base_widgets/keyboard_aware.dart';
import 'package:project_core/presentation/views/screens/main_screens/login_screen/widgets/app_header.dart';
import 'package:project_core/presentation/widgets/custom_label_field.dart';
import 'package:project_core/presentation/views/screens/main_screens/login_screen/widgets/divider.dart';
import 'package:project_core/presentation/views/screens/main_screens/login_screen/widgets/remember_and_forgot_row.dart';
import 'package:project_core/presentation/views/screens/main_screens/login_screen/widgets/social_buttons.dart';
import 'package:project_core/presentation/views/screens/main_screens/main_screen.dart';
import 'package:project_core/shared/shared.dart';

class LoginScreen extends StatefulWidget {
  static const String routeName = "LoginScreen";

  const LoginScreen({Key? key}) : super(key: key);

  @override
  State<LoginScreen> createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final TextEditingController _usernameController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();
  // bool _rememberMe = false;
  @override
  Widget build(BuildContext context) {
    return KeyboardAware(
      child: Scaffold(
        backgroundColor: AppColors.dark,
        body: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 30),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                // App header
                const AppHeader(),
                24.spaceY,
                // Username Field
                LabeledTextField(
                  label: 'User Name',
                  hint: 'Enter your Name',
                  controller: _usernameController,
                ),
                24.spaceY,
                // Password Field
                LabeledTextField(
                  label: 'Password',
                  hint: 'Enter your Password',
                  controller: _passwordController,
                  isPassword: true,
                ),

                12.spaceY,
                // Remember Me & Forgot Password
                RememberMeAndForgotPasswordRow(),
                12.spaceY,
                // Login Button aligned with
                CustomElevatedButton(
                  onPressed: () {
                    Navigation.pushNamed(MainScreen.routeName);
                  },
                  isOutlined: false,
                  text: 'Login',
                ),
                12.spaceY,
                // OR Divider
                CustomDivider(),
                15.spaceY,
                // Facebook Login Button
                CustomElevatedButton(
                  onPressed: () {},
                  isOutlined: true,
                  text: 'Login with Facebook',
                  imageAsset: AppAssets.facebook,
                  // icon: Icons.facebook,
                  iconBackgroundColor: Color(0xFF1877F2),
                  backgroundColor: Colors.grey[600]!,
                ),
                20.spaceY,

                ///google login button
                CustomElevatedButton(
                  onPressed: () {},
                  isOutlined: true,
                  text: 'Login with Google',
                  // icon: FontAwesomeIcons.google,
                  imageAsset: AppAssets.google,
                  iconBackgroundColor: Color(0xFF1877F2),
                  backgroundColor: Colors.grey[600]!,
                ),
                20.spaceY,
                CustomElevatedButton(
                  onPressed: () {},
                  isOutlined: true,
                  text: 'Login with Apple',
                  imageAsset: AppAssets.applewhite,
                  backgroundColor: Colors.grey[600]!,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
