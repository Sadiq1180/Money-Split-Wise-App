import 'package:flutter/material.dart';
import 'package:project_core/presentation/views/screens/add_expenses/add_bill.dart';
import 'package:project_core/presentation/views/screens/add_expenses/with_you_and/add_members.dart';
import 'package:project_core/presentation/views/screens/add_expenses/with_you_and/widgets/image_container.dart';
import 'package:project_core/presentation/views/screens/onboarding_screens/widgets/social_buttons.dart';
import 'package:project_core/presentation/widgets/custom_title.dart';
import 'package:project_core/shared/shared.dart';

class ConfirmGroup extends StatelessWidget {
  static const String routeName = "confirm_group";
  const ConfirmGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.dark,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 20.0),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              CustomTitle(
                title: "",
                trailing: const Icon(Icons.settings, color: Colors.white60),
              ),
              40.spaceY,

              // Image Container
              Center(
                child: ImageContainer(
                  assetPath: AppAssets.person1,
                  height: 100,
                  width: 100,
                  borderRadius: BorderRadius.circular(50),
                ),
              ),
              16.spaceY,

              // Group Info
              Column(
                children: const [
                  Text(
                    "Name of Group",
                    style: TextStyle(fontSize: 20, color: Colors.white),
                  ),
                  SizedBox(height: 4),
                  Text(
                    "Group - 2 members",
                    style: TextStyle(color: Colors.white70, fontSize: 14),
                  ),
                ],
              ),
              40.spaceY,

              // Buttons
              SizedBox(
                width: double.infinity,
                child: CustomElevatedButton(
                  onPressed: () {
                    Navigation.pushNamed(AddMembers.routeName);
                  },
                  isOutlined: false,
                  text: "Add Members",
                ),
              ),
              20.spaceY,
              SizedBox(
                width: double.infinity,
                child: CustomElevatedButton(
                  onPressed: () {},
                  isOutlined: false,
                  text: "Add Expenses",
                ),
              ),
            ],
          ),
        ),
      ),

      ///Floating button
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigation.pushNamed(AddBill.routeName);
        },
        backgroundColor: Colors.amber,
        elevation: 0,
        focusElevation: 5,
        child: const Icon(Icons.add, color: Colors.black),
      ),
    );
  }
}
