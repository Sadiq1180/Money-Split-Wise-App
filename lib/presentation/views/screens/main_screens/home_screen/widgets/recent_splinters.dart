import 'package:flutter/material.dart';
import 'package:project_core/presentation/views/screens/main_screens/home_screen/widgets/add_profile_button.dart';
import 'package:project_core/shared/shared.dart';

class ProfileData {
  final String imagePath;
  final Color backgroundColor;

  ProfileData({required this.imagePath, required this.backgroundColor});
}

class ProfileSelectorWidget extends StatefulWidget {
  final List<ProfileData> profiles;
  final VoidCallback? onAddPressed;
  final Function(ProfileData)? onProfileTapped;

  const ProfileSelectorWidget({
    Key? key,
    required this.profiles,
    this.onAddPressed,
    this.onProfileTapped,
  }) : super(key: key);

  @override
  State<ProfileSelectorWidget> createState() => _ProfileSelectorWidgetState();
}

class _ProfileSelectorWidgetState extends State<ProfileSelectorWidget> {
  int? selectedIndex;

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16),
      padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 8),
      decoration: BoxDecoration(
        border: Border.all(color: AppColors.darkGrey, width: 2),
        borderRadius: BorderRadius.circular(20),
      ),
      child: SizedBox(
        height: 72,
        child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: widget.profiles.length + 1,
          itemBuilder: (context, index) {
            if (index == widget.profiles.length) {
              return AddProfileButton(onPressed: widget.onAddPressed);
            }

            final profile = widget.profiles[index];
            final isSelected = selectedIndex == index;

            return GestureDetector(
              onTap: () {
                setState(() => selectedIndex = index);
                widget.onProfileTapped?.call(profile);
              },
              child: Container(
                width: 64,
                height: 64,
                margin: const EdgeInsets.only(right: 12),
                decoration: BoxDecoration(
                  color: profile.backgroundColor,
                  borderRadius: BorderRadius.circular(16),
                  border: isSelected
                      ? Border.all(color: Colors.white, width: 2)
                      : null,
                ),
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(16),
                  child: Image.asset(
                    profile.imagePath,
                    fit: BoxFit.cover,
                    errorBuilder: (_, __, ___) =>
                        const Icon(Icons.person, color: Colors.white, size: 32),
                  ),
                ),
              ),
            );
          },
        ),
      ),
    );
  }
}
