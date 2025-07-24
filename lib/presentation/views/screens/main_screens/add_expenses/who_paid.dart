import 'package:flutter/material.dart';
import 'package:project_core/presentation/base_widgets/keyboard_aware.dart';
import 'package:project_core/presentation/views/screens/main_screens/add_expenses/widgets/toggle_buttons.dart';
import 'package:project_core/presentation/views/screens/main_screens/add_expenses/widgets/user_card.dart';
import 'package:project_core/presentation/views/screens/main_screens/login_screen/widgets/social_buttons.dart';
import 'package:project_core/presentation/widgets/custom_title.dart';
import 'package:project_core/shared/extensions/sized_box.dart';

class WhoPaid extends StatefulWidget {
  static const String routeName = "Who_Paid";

  const WhoPaid({super.key});

  @override
  State<WhoPaid> createState() => _WhoPaidState();
}

class _WhoPaidState extends State<WhoPaid> {
  bool isSingleSelected = true;

  final List<Map<String, String>> users = [
    {'id': '1', 'name': 'Sadiq Ali', 'email': 'Sadiq@example.com'},
    {'id': '2', 'name': 'Ahmad Ali', 'email': 'Ahmad@example.com'},
    {'id': '3', 'name': 'Kamil Khan', 'email': 'kamil@example.com'},
    {'id': '4', 'name': 'Asif Ali', 'email': 'asif@example.com'},
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF1A1A1A),
      body: KeyboardAware(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 18.0,
              vertical: 20.0,
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const CustomTitle(title: "Who Paid"),
                24.spaceY,
                Row(
                  children: [
                    ToggleButton(
                      label: "Single",
                      isSelected: isSingleSelected,
                      onTap: () => setState(() => isSingleSelected = true),
                    ),
                    12.spaceX,
                    ToggleButton(
                      label: "Multiple",
                      isSelected: !isSingleSelected,
                      onTap: () => setState(() => isSingleSelected = false),
                    ),
                  ],
                ),
                24.spaceY,

                /// Content Section
                Expanded(
                  child: isSingleSelected
                      ? ListView.builder(
                          itemCount: users.length,
                          itemBuilder: (context, index) {
                            final user = users[index];
                            return UserCard(
                              name: user['name']!,
                              email: user['email']!,
                            );
                          },
                        )
                      : Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Expanded(
                              child: ListView.builder(
                                itemCount: users.length,
                                itemBuilder: (context, index) {
                                  final user = users[index];
                                  return UserCard(
                                    name: user['name']!,
                                    email: user['email']!,
                                    isMultipleMode: true,
                                    controller: TextEditingController(),
                                  );
                                },
                              ),
                            ),
                          ],
                        ),
                ),
                Divider(thickness: 1, color: Colors.grey[700]),
                // 12.spaceY,
                Center(
                  child: Column(
                    children: [
                      Text(
                        "70.00 out of 100.00",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                      4.spaceY,
                      Text(
                        "30.00 left",
                        style: TextStyle(color: Colors.grey[400], fontSize: 14),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 20, right: 15, left: 15),
        child: SizedBox(
          width: double.infinity,
          child: CustomElevatedButton(
            onPressed: () {},
            isOutlined: false,
            text: "Done",
          ),
        ),
      ),
    );
  }
}
