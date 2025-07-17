import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final bool isOutlined;
  final Color backgroundColor;
  final Color textColor;
  final String text;
  final IconData? icon;
  final Color? iconBackgroundColor;

  const CustomElevatedButton({
    Key? key,
    required this.onPressed,
    required this.isOutlined,
    required this.text,
    this.backgroundColor = const Color(0xFFD4AF37), // for
    this.textColor = Colors.white,
    this.icon,
    this.iconBackgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final buttonChild = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        if (icon != null)
          Container(
            width: 20,
            height: 20,
            margin: const EdgeInsets.only(right: 12),
            decoration: BoxDecoration(
              color: iconBackgroundColor ?? Colors.white,
              shape: BoxShape.circle,
            ),
            child: Icon(icon, size: 16, color: Colors.white),
          ),
        Text(
          text,
          style: TextStyle(
            color: textColor,
            fontSize: 14,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );

    if (isOutlined) {
      return OutlinedButton(
        onPressed: onPressed,
        style: OutlinedButton.styleFrom(
          side: BorderSide(color: backgroundColor),
          padding: const EdgeInsets.symmetric(vertical: 16),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
        ),
        child: buttonChild,
      );
    } else {
      return ElevatedButton(
        onPressed: onPressed,
        style: ElevatedButton.styleFrom(
          backgroundColor: backgroundColor,
          foregroundColor: textColor,
          padding: const EdgeInsets.symmetric(vertical: 14),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
          elevation: 0,
        ),
        child: buttonChild,
      );
    }
  }
}
