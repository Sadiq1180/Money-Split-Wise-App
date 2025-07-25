import 'package:flutter/material.dart';
import 'package:project_core/presentation/base_widgets/keyboard_aware.dart';
import 'package:project_core/presentation/views/screens/main_screens/add_expenses/widgets/custom_search_bar.dart';
import 'package:project_core/presentation/views/screens/main_screens/add_expenses/widgets/group_container.dart';
import 'package:project_core/presentation/views/screens/main_screens/home_screen/widgets/recent_bills.dart';
import 'package:project_core/presentation/widgets/custom_title.dart';
import 'package:project_core/shared/shared.dart';

class WithYouAnd extends StatelessWidget {
  static const String routeName = "withYouAnd";
  const WithYouAnd({super.key});

  //Groups
  final List<String> groups = const [
    "Group Name 1",
    "Group Name 2",
    "Group Name 3",
  ];

  final List<String> friends = const ["Friend 1", "Friend 2", "Friend 3"];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.dark,
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 18.0, vertical: 20.0),
        child: KeyboardAware(
          child: SafeArea(
            child: Column(
              children: [
                CustomTitle(title: "With you and"),
                10.spaceY,
                CustomSearchBar(controller: TextEditingController()),
                20.spaceY,

                Expanded(
                  child: SingleChildScrollView(
                    child: Column(
                      children: [
                        // Groups Section
                        TitleWithOptionalButton(
                          title: "Groups",
                          showButton: false,
                        ),
                        10.spaceY,
                        ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: groups.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: const EdgeInsets.only(bottom: 10.0),
                              child: GroupContainer(
                                groupName: groups[index],
                                groupImage: Icon(
                                  Icons.group,
                                  color: Colors.grey[300],
                                ),
                                trailing: Icon(Icons.check, color: Colors.grey),
                              ),
                            );
                          },
                        ),

                        10.spaceY,

                        // Friends Section
                        TitleWithOptionalButton(
                          title: "Friends",
                          showButton: false,
                        ),
                        10.spaceY,
                        ListView.builder(
                          shrinkWrap: true,
                          physics: NeverScrollableScrollPhysics(),
                          itemCount: friends.length,
                          itemBuilder: (context, index) {
                            return Padding(
                              padding: EdgeInsets.only(bottom: 10.0),
                              child: GroupContainer(
                                groupName: friends[index],
                                groupImage: Icon(
                                  Icons.person,
                                  color: Colors.grey[300],
                                ),
                                trailing: Icon(Icons.check, color: Colors.grey),
                              ),
                            );
                          },
                        ),
                      ],
                    ),
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
