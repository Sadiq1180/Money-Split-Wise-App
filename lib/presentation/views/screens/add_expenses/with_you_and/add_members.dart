import 'package:flutter/material.dart';
import 'package:project_core/presentation/views/screens/add_expenses/widgets/custom_search_bar.dart';
import 'package:project_core/presentation/views/screens/add_expenses/widgets/group_container.dart';
import 'package:project_core/presentation/views/screens/add_expenses/widgets/user_card.dart';
import 'package:project_core/presentation/views/screens/home_screen/widgets/recent_bills.dart';
import 'package:project_core/presentation/views/screens/onboarding_screens/widgets/social_buttons.dart';
import 'package:project_core/presentation/widgets/custom_title.dart';
import 'package:project_core/shared/shared.dart';

class AddMembers extends StatelessWidget {
  static const String routeName = "add_members";
  const AddMembers({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.dark,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 20.0),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                CustomTitle(title: "Add Members"),
                20.spaceY,
                CustomSearchBar(
                  controller: TextEditingController(),
                  borderColor: AppColors.darkGrey,
                ),
                20.spaceY,
                GroupContainer(
                  groupName: "Name",
                  groupImage: Icon(
                    Icons.person_2_sharp,
                    color: Colors.grey[300],
                  ),
                  trailing: Icon(Icons.close, color: Colors.white70),
                ),
                20.spaceY,
                GroupContainer(
                  groupName: "Name",
                  groupImage: Icon(
                    Icons.person_2_sharp,
                    color: Colors.grey[300],
                  ),
                  trailing: Icon(Icons.close, color: Colors.white70),
                ),
                20.spaceY,
                TitleWithOptionalButton(
                  title: "Friends on Splitwise",
                  showButton: false,
                ),
                20.spaceY,
                UserCard(
                  name: "name",
                  email: "example@gmail.com",
                  trailing: Icon(
                    Icons.check_circle_outline,
                    color: Colors.amber,
                  ),
                ),
                10.spaceY,
                UserCard(
                  name: "name",
                  email: "example@gmail.com",
                  trailing: Icon(
                    Icons.check_circle_outline,
                    color: Colors.amber,
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 20, left: 15, right: 15),
        child: CustomElevatedButton(
          onPressed: () {},
          isOutlined: false,
          text: "Create Group",
        ),
      ),
    );
  }
}
