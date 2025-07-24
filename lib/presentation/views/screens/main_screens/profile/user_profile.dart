import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:project_core/presentation/views/screens/main_screens/friends_group/widgets/my_groups.dart';
import 'package:project_core/presentation/views/screens/main_screens/home_screen/widgets/home_header.dart';
import 'package:project_core/presentation/views/screens/main_screens/profile/settings/edit_profile.dart';
import 'package:project_core/shared/constants/app_assets.dart';
import 'package:project_core/shared/constants/app_colors.dart';
import 'package:project_core/shared/extensions/sized_box.dart';
import 'package:project_core/shared/navigation/navigation.dart';

final darkModeProvider = StateProvider<bool>((ref) => false);

class UserProfile extends ConsumerWidget {
  static const String routeName = "User_profile";
  const UserProfile({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final isDarkMode = ref.watch(darkModeProvider);

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
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                ),
                10.spaceY,
                HomeGreeting(
                  rightIcon: Icons.login,
                  profileImage: AppAssets.person3,
                  greetingMessage: "Free User",
                  showDot: false,
                  onIconTap: () {},
                ),
                20.spaceY,
                const Text(
                  "Settings",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 15,
                    fontWeight: FontWeight.w500,
                  ),
                ),
                10.spaceY,
                MyGroups(
                  title: "Edit Profile",
                  icon: Icons.person_2_outlined,
                  onTap: () {
                    Navigation.pushNamed(EditProfile.routeName);
                  },
                ),
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

                /// dark mode with switch bitton
                MyGroups(
                  icon: Icons.nightlight_outlined,
                  title: "Dark mode",
                  trailingWidget: Switch(
                    value: isDarkMode,
                    onChanged: (val) {
                      ref.read(darkModeProvider.notifier).state = val;
                    },
                    // thumbColor: MaterialStateProperty.all(Colors.white),
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
