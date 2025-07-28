import 'package:flutter/material.dart';
import 'package:project_core/presentation/views/screens/add_expenses/widgets/custom_search_bar.dart';
import 'package:project_core/presentation/views/screens/add_expenses/with_you_and/confirm_group.dart';
import 'package:project_core/presentation/views/screens/add_expenses/with_you_and/widgets/icon_label_box.dart';
import 'package:project_core/presentation/views/screens/home_screen/widgets/recent_bills.dart';
import 'package:project_core/presentation/views/screens/onboarding_screens/widgets/social_buttons.dart';
import 'package:project_core/presentation/widgets/custom_label_field.dart';
import 'package:project_core/presentation/widgets/custom_title.dart';
import 'package:project_core/shared/shared.dart';

class AddNewGroup extends StatelessWidget {
  static const String routeName = "AddNewGroup";
  const AddNewGroup({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomTitle(title: "Create Group"),
      backgroundColor: AppColors.dark,
      body: SafeArea(
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 18.0),
          child: Column(
            children: [
              // CustomTitle(title: "Create Group"),
              20.spaceY,
              LabeledTextField(
                label: "Group Name",
                hint: "Group name",
                controller: TextEditingController(),
              ),
              // CustomSearchBar(
              //   controller: TextEditingController(),
              //   hintText: "Group Name",
              //   showIcon: false,
              //   borderColor: Colors.grey,
              // ),
              30.spaceY,
              TitleWithOptionalButton(title: "Type", showButton: false),
              20.spaceY,
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  IconLabelBox(icon: Icons.airplane_ticket, label: 'Trip'),
                  20.spaceX,
                  IconLabelBox(icon: Icons.other_houses_sharp, label: 'Home'),
                  20.spaceX,
                  IconLabelBox(icon: Icons.favorite, label: 'Couple'),
                  20.spaceX,
                  IconLabelBox(
                    icon: Icons.settings_applications_outlined,
                    label: 'Other',
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 20, right: 15, left: 15),
        child: CustomElevatedButton(
          onPressed: () {
            Navigation.pushNamed(ConfirmGroup.routeName);
          },
          isOutlined: false,
          text: "Create Group",
        ),
      ),
    );
  }
}
