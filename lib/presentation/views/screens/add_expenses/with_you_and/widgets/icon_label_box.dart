import 'package:flutter/material.dart';

class IconLabelBox extends StatelessWidget {
  final IconData icon;
  final String label;
  final double iconSize;
  final double boxSize;
  final Color backgroundColor;
  final Color iconColor;
  final Color labelColor;

  const IconLabelBox({
    super.key,
    required this.icon,
    required this.label,
    this.iconSize = 28,
    this.boxSize = 60,
    this.backgroundColor = const Color(0xFF424242),
    this.iconColor = Colors.white,
    this.labelColor = Colors.white70,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: boxSize,
      width: boxSize,
      decoration: BoxDecoration(
        color: backgroundColor,
        borderRadius: BorderRadius.circular(8),
      ),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(icon, color: iconColor, size: iconSize),
          const SizedBox(height: 4),
          Text(
            label,
            style: TextStyle(
              color: labelColor,
              fontSize: 10,
              fontWeight: FontWeight.w500,
            ),
            textAlign: TextAlign.center,
          ),
        ],
      ),
    );
  }
}
