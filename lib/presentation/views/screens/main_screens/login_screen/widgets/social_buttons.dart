import 'package:flutter/material.dart';

class CustomElevatedButton extends StatelessWidget {
  final VoidCallback onPressed;
  final bool isOutlined;
  final Color backgroundColor;
  final Color textColor;
  final String text;
  final IconData? icon;
  final String? imageAsset;
  final Color? iconBackgroundColor;

  const CustomElevatedButton({
    Key? key,
    required this.onPressed,
    required this.isOutlined,
    required this.text,
    this.backgroundColor = const Color(0xFFD4AF37),
    this.textColor = Colors.white,
    this.icon,
    this.imageAsset,
    this.iconBackgroundColor,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget? leadingWidget;

    if (imageAsset != null) {
      leadingWidget = Container(
        width: 22,
        height: 22,
        margin: const EdgeInsets.only(right: 10),
        child: Image.asset(imageAsset!, fit: BoxFit.contain),
      );
    } else if (icon != null) {
      leadingWidget = Container(
        margin: const EdgeInsets.only(right: 10),
        decoration: BoxDecoration(
          color: iconBackgroundColor ?? Colors.white,
          shape: BoxShape.circle,
        ),
        child: Icon(icon, size: 16, color: Colors.white),
      );
    }

    final buttonChild = Row(
      mainAxisAlignment: MainAxisAlignment.center,
      mainAxisSize: MainAxisSize.min,
      children: [
        if (leadingWidget != null) leadingWidget,
        Flexible(
          child: Text(
            text,
            style: TextStyle(
              color: textColor,
              fontSize: 14,
              fontWeight: FontWeight.w500,
            ),
          ),
        ),
      ],
    );

    final commonStyle = ButtonStyle(
      padding: MaterialStateProperty.all(
        const EdgeInsets.symmetric(vertical: 14),
      ),
      shape: MaterialStateProperty.all(
        RoundedRectangleBorder(borderRadius: BorderRadius.circular(8)),
      ),
    );

    if (isOutlined) {
      return OutlinedButton(
        onPressed: onPressed,
        style: commonStyle.copyWith(
          side: MaterialStateProperty.all(BorderSide(color: backgroundColor)),
        ),
        child: buttonChild,
      );
    } else {
      return ElevatedButton(
        onPressed: onPressed,
        style: commonStyle.copyWith(
          backgroundColor: MaterialStateProperty.all(backgroundColor),
          foregroundColor: MaterialStateProperty.all(textColor),
          elevation: MaterialStateProperty.all(0),
        ),
        child: buttonChild,
      );
    }
  }
}
