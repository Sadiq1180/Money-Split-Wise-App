import 'package:flutter/material.dart';
import 'package:project_core/shared/extensions/sized_box.dart';

class TitleWithOptionalButton extends StatelessWidget {
  final String title;
  final bool showButton;
  final String buttonText;
  final IconData buttonIcon;
  final VoidCallback? onTap;
  final Color? buttonColor;
  final bool showIcon;

  const TitleWithOptionalButton({
    super.key,
    required this.title,
    this.showButton = true,
    this.buttonText = 'Add Bills',
    this.buttonIcon = Icons.add,
    this.onTap,
    this.buttonColor,
    this.showIcon = true,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Left: Title
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),

          // Right: Optional Button
          // if (showButton)
          GestureDetector(
            onTap: onTap,
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
              decoration: BoxDecoration(
                color: buttonColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Row(
                children: [
                  !showIcon
                      ? SizedBox.shrink()
                      : Icon(buttonIcon, size: 16, color: Colors.amberAccent),
                  6.spaceX,
                  Text(
                    buttonText,
                    style: const TextStyle(
                      fontSize: 14,
                      fontWeight: FontWeight.w500,
                      color: Colors.amberAccent,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
