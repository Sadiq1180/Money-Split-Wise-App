import 'package:flutter/material.dart';
import 'package:project_core/shared/constants/app_colors.dart';
import 'package:project_core/shared/extensions/sized_box.dart';

class UserCard extends StatelessWidget {
  final String name;
  final String email;
  final bool isMultipleMode;
  final TextEditingController? controller;
  final Widget? trailing;

  const UserCard({
    required this.name,
    required this.email,
    this.isMultipleMode = false,
    this.controller,
    this.trailing,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12.0),
      child: Container(
        height: 60,
        padding: const EdgeInsets.symmetric(horizontal: 5),
        decoration: BoxDecoration(
          color: Colors.grey[850],
          border: Border.all(color: Colors.grey[600]!, width: 1),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Row(
          children: [
            // Profile Placeholder Box
            Container(
              width: 50,
              height: 50,
              decoration: BoxDecoration(
                color: Colors.grey[700],
                borderRadius: BorderRadius.circular(8),
                border: Border.all(color: Colors.grey[500]!, width: 1),
              ),
            ),
            14.spaceX,
            // Name + Email Column
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Text(
                    name,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                  const SizedBox(height: 2),
                  Text(
                    email,
                    style: TextStyle(color: Colors.grey[400], fontSize: 14),
                  ),
                ],
              ),
            ),
            // Trailing section
            trailing ??
                (isMultipleMode
                    ? SizedBox(
                        width: 60,
                        height: 32,
                        child: TextField(
                          cursorColor: const Color(0xFFD4AF37),
                          controller: controller,
                          keyboardType: TextInputType.number,
                          style: const TextStyle(color: Colors.white),
                          decoration: InputDecoration(
                            contentPadding: const EdgeInsets.symmetric(
                              horizontal: 8,
                              vertical: 4,
                            ),
                            hintText: '0',
                            hintStyle: TextStyle(color: Colors.grey[500]),
                            border: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                            ),
                            //changed field border color to grey
                            enabledBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(8),
                              borderSide: BorderSide(color: AppColors.darkGrey),
                            ),
                            focusedBorder: OutlineInputBorder(
                              borderRadius: BorderRadius.circular(10),
                              borderSide: const BorderSide(
                                color: Color(0xFFD4AF37),
                              ),
                            ),
                          ),
                        ),
                      )
                    : const Icon(
                        Icons.check_circle_outline_outlined,
                        color: Color(0xFFFFB347),
                        size: 24,
                      )),
          ],
        ),
      ),
    );
  }
}
