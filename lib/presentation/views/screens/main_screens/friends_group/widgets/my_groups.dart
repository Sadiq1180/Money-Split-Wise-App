import 'package:flutter/material.dart';
import 'package:project_core/shared/constants/app_colors.dart';

class MyGroups extends StatelessWidget {
  final IconData? icon;
  final String title;
  final String? subtitle1;
  final String? subtitle2;
  final Color iconColor;
  final IconData rightIcon;
  final Widget? trailingWidget;
  final VoidCallback? onTap; // <-- Added onTap

  const MyGroups({
    Key? key,
    this.icon,
    required this.title,
    this.subtitle1,
    this.subtitle2,
    this.iconColor = Colors.white,
    this.rightIcon = Icons.keyboard_arrow_right,
    this.trailingWidget,
    this.onTap, // <-- Constructor
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(12),
          child: Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 10),
            decoration: BoxDecoration(borderRadius: BorderRadius.circular(12)),
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                if (icon != null) ...[
                  Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: AppColors.darkerGrey,
                      borderRadius: BorderRadius.circular(8),
                    ),
                    child: Center(
                      child: Icon(icon, color: iconColor, size: 22),
                    ),
                  ),
                  const SizedBox(width: 12),
                ],

                // Title and Subtitles
                Expanded(
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        title,
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 16,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                      const SizedBox(height: 4),
                      if (subtitle1 != null)
                        Text(
                          subtitle1!,
                          style: const TextStyle(
                            color: Colors.greenAccent,
                            fontSize: 14,
                          ),
                        ),
                      if (subtitle2 != null)
                        Text(
                          subtitle2!,
                          style: const TextStyle(
                            color: Colors.greenAccent,
                            fontSize: 14,
                          ),
                        ),
                    ],
                  ),
                ),

                // Right icon or trailing widget
                trailingWidget ??
                    Icon(rightIcon, color: Colors.grey.shade400, size: 22),
              ],
            ),
          ),
        ),

        // Divider
        Center(
          child: SizedBox(
            width: 320,
            child: Divider(color: AppColors.darkGrey, thickness: 1),
          ),
        ),
      ],
    );
  }
}
