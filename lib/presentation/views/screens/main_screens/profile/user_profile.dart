import 'package:flutter/material.dart';
import 'package:project_core/presentation/views/screens/main_screens/friends_group/widgets/my_groups.dart';
import 'package:project_core/presentation/views/screens/main_screens/home_screen/widgets/home_header.dart';
import 'package:project_core/shared/constants/app_assets.dart';
import 'package:project_core/shared/constants/app_colors.dart';
import 'package:project_core/shared/extensions/sized_box.dart';

class UserProfile extends StatefulWidget {
  static const String routeName = "User_profile";
  const UserProfile({super.key});

  @override
  State<UserProfile> createState() => _UserProfileState();
}

class _UserProfileState extends State<UserProfile> {
  bool isDarkMode = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.appBackground,
      body: SingleChildScrollView(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  "My Profile",
                  textAlign: TextAlign.left,
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                20.spaceY,
                HomeGreeting(
                  rightIcon: Icons.login,
                  profileImage: AppAssets.person3,
                  greetingMessage: "Free User",
                  showDot: false,
                  onIconTap: () {},
                ),
                20.spaceY,
                // Settings header
                const Text(
                  "Settings",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                10.spaceY,

                MyGroups(title: "Edit Profile", icon: Icons.person_2_outlined),
                10.spaceY,
                MyGroups(
                  title: "Transaction History",
                  icon: Icons.history_toggle_off,
                ),
                10.spaceY,
                MyGroups(title: "Currency (GPB)", icon: Icons.currency_bitcoin),
                10.spaceY,
                MyGroups(
                  title: "Premium Membership",
                  icon: Icons.workspace_premium_outlined,
                ),
                // 10.spaceY,
                MyGroups(
                  icon: Icons.nightlight_outlined,
                  title: "Dark mode",
                  trailingWidget: Switch(
                    value: isDarkMode,
                    onChanged: (val) => setState(() => isDarkMode = val),
                    thumbColor: MaterialStateProperty.all(
                      Colors.white,
                    ), // white circle
                    trackColor: MaterialStateProperty.resolveWith<Color>(
                      (states) => states.contains(MaterialState.selected)
                          ? Colors.green
                          : Colors.grey,
                    ),
                  ),
                ),
                10.spaceY,
                MyGroups(
                  title: "Help & Support",
                  icon: Icons.support_agent_sharp,
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
