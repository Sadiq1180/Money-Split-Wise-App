import 'package:flutter/material.dart';
import 'package:project_core/shared/constants/app_colors.dart';

class BorderedInputField extends StatelessWidget {
  final String hintText;
  final IconData icon;
  final TextEditingController controller;

  const BorderedInputField({
    Key? key,
    required this.hintText,
    required this.icon,
    required this.controller,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          height: 50,
          width: 50,
          decoration: BoxDecoration(
            color: AppColors.darkerGrey,
            borderRadius: BorderRadius.circular(12), // Changed from 10 to 12
          ),
          child: Icon(icon, color: Colors.grey[400], size: 24),
        ),
        const SizedBox(width: 12),
        Expanded(
          child: Container(
            height: 50,
            alignment: Alignment.centerLeft,
            padding: const EdgeInsets.symmetric(horizontal: 16),
            decoration: BoxDecoration(
              color: Colors.grey[850],
              border: Border.all(color: Colors.grey[600]!, width: 1.0),
              borderRadius: BorderRadius.circular(12),
            ),
            child: TextField(
              controller: controller,
              style: const TextStyle(color: Colors.white),
              decoration: InputDecoration(
                isCollapsed: true,
                hintText: hintText,
                hintStyle: TextStyle(color: Colors.grey[400]),
                border: InputBorder.none,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
