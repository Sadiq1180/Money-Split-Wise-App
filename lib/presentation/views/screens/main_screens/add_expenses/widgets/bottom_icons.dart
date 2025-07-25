import 'package:flutter/material.dart';
import 'package:project_core/shared/extensions/sized_box.dart';

class BottomIcons extends StatelessWidget {
  const BottomIcons({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 18.0),
      child: Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: const [
              Icon(Icons.calendar_month_outlined, color: Colors.white),
              SizedBox(width: 16),
              Icon(Icons.camera_alt_outlined, color: Colors.white),
              SizedBox(width: 16),
              Icon(Icons.edit_calendar_outlined, color: Colors.white),
            ],
          ),
          10.spaceY,
        ],
      ),
    );
  }
}
