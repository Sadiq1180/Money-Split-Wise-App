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
  final TextStyle? buttonTextStyle;
  final EdgeInsetsGeometry? padding;

  const TitleWithOptionalButton({
    super.key,
    required this.title,
    this.showButton = true,
    this.buttonText = 'Add Bills',
    this.buttonIcon = Icons.add,
    this.onTap,
    this.buttonColor,
    this.showIcon = true,
    this.buttonTextStyle,
    this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: padding ?? EdgeInsets.zero,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(
            title,
            style: const TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),
          if (showButton)
            GestureDetector(
              onTap: onTap,
              child: Container(
                padding: const EdgeInsets.symmetric(
                  horizontal: 12,
                  vertical: 6,
                ),
                decoration: BoxDecoration(
                  color: buttonColor,
                  borderRadius: BorderRadius.circular(8),
                ),
                child: Row(
                  children: [
                    if (showIcon)
                      Icon(buttonIcon, size: 16, color: Colors.amberAccent),
                    if (showIcon) 6.spaceX,
                    Text(
                      buttonText,
                      style:
                          buttonTextStyle ??
                          const TextStyle(
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
