import 'package:flutter/material.dart';
import 'package:project_core/presentation/views/screens/main_screens/notifications/notifications.dart';
import 'package:project_core/shared/shared.dart';

class HomeGreeting extends StatelessWidget implements PreferredSizeWidget {
  final String userName;
  final String? profileImage;
  final String greetingMessage;
  final VoidCallback? onIconTap;
  final IconData rightIcon;
  final bool showDot;

  const HomeGreeting({
    Key? key,
    this.userName = 'Sadiq',
    this.profileImage,
    this.greetingMessage = 'Easily split bills & track expenses',
    this.onIconTap,
    this.rightIcon = Icons.notifications_none,
    this.showDot = true,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.only(top: 10, right: 5, left: 5),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            // Profile Picture and Greeting
            Row(
              children: [
                // Profile Picture
                Container(
                  width: 45,
                  height: 45,
                  decoration: BoxDecoration(
                    shape: BoxShape.circle,
                    border: Border.all(color: Colors.white, width: 2),
                  ),
                  child: ClipOval(
                    child: profileImage != null
                        ? Image.asset(profileImage!, fit: BoxFit.cover)
                        : _fallbackAvatar(),
                  ),
                ),
                12.spaceX,
                // Greeting Text
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Hi $userName! 👋',
                      style: const TextStyle(
                        fontSize: 18,
                        fontWeight: FontWeight.bold,
                        color: Colors.white,
                      ),
                    ),

                    4.spaceY,
                    Text(
                      greetingMessage,
                      style: const TextStyle(fontSize: 14, color: Colors.grey),
                    ),
                  ],
                ),
              ],
            ),

            // Notification Icon (with optional dot)
            GestureDetector(
              onTap:
                  onIconTap ??
                  () {
                    Navigation.pushNamed(Notifications.routeName);
                  },
              child: Stack(
                clipBehavior: Clip.none,
                children: [
                  Container(
                    padding: const EdgeInsets.all(10),
                    decoration: BoxDecoration(
                      color: const Color(0xFF3D3D3D),
                      borderRadius: BorderRadius.circular(12),
                    ),
                    child: Icon(rightIcon, color: Colors.white),
                  ),
                  if (showDot)
                    Positioned(
                      top: 4,
                      right: 4,
                      child: Container(
                        width: 8,
                        height: 8,
                        decoration: BoxDecoration(
                          color: AppColors.secondary,
                          shape: BoxShape.circle,
                        ),
                      ),
                    ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Used when no profile image is provided or loading fails.
  Widget _fallbackAvatar() {
    return Container(
      color: Colors.orange,
      child: const Icon(Icons.person, color: Colors.white, size: 25),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(80);
}
