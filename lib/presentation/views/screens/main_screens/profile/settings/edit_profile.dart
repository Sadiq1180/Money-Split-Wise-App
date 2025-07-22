import 'dart:async';

import 'package:flutter/material.dart';
import 'package:project_core/presentation/base_widgets/keyboard_aware.dart';
import 'package:project_core/presentation/views/screens/main_screens/login_screen/widgets/social_buttons.dart';
import 'package:project_core/presentation/widgets/custom_label_field.dart';
import 'package:project_core/shared/constants/app_assets.dart';
import 'package:project_core/shared/constants/app_colors.dart';
import 'package:project_core/shared/extensions/sized_box.dart';
import 'package:project_core/shared/navigation/navigation.dart';

class EditProfile extends StatelessWidget {
  static const String routeName = "Edit_Profile";
  const EditProfile({super.key});

  @override
  Widget build(BuildContext context) {
    final TextEditingController nameController = TextEditingController();
    final TextEditingController emailController = TextEditingController();

    return Scaffold(
      backgroundColor: AppColors.darkerGrey,
      body: KeyboardAware(
        child: SafeArea(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Back and Title
                Row(
                  children: [
                    GestureDetector(
                      onTap: () => Navigator.pop(context),
                      child: const Icon(
                        Icons.arrow_back_ios,
                        color: Colors.white,
                        size: 20,
                      ),
                    ),
                    10.spaceX,
                    const Text(
                      "Edit Profile",
                      style: TextStyle(
                        color: Colors.white,
                        fontSize: 18,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                  ],
                ),
                30.spaceY,

                //  Profile Image
                Center(
                  child: Stack(
                    alignment: Alignment.center,
                    children: [
                      Container(
                        width: 90,
                        height: 90,
                        padding: const EdgeInsets.all(5),
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white, width: 2),
                        ),
                        child: ClipRRect(
                          borderRadius: BorderRadius.circular(45),
                          child: Image.asset(
                            AppAssets.appLogo,
                            width: 80,
                            height: 80,
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      //  Edit Icon Positioned
                      Positioned(
                        bottom: 0,
                        right: 0,
                        child: Container(
                          padding: const EdgeInsets.all(4),
                          decoration: BoxDecoration(
                            shape: BoxShape.circle,
                            color: Colors.amber,
                          ),
                          child: Icon(
                            Icons.edit,
                            size: 16,
                            color: Colors.white,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),

                30.spaceY,

                //  Name Field
                LabeledTextField(
                  label: "Name",
                  hint: "Enter your name",
                  controller: nameController,
                ),
                16.spaceY,

                //  Email Field
                LabeledTextField(
                  label: "Email",
                  hint: "Enter your email",
                  controller: emailController,
                ),
                30.spaceY,

                //  Update Button
                SizedBox(
                  width: double.infinity,
                  child: CustomElevatedButton(
                    onPressed: () {},
                    isOutlined: false,
                    text: "Update",
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
