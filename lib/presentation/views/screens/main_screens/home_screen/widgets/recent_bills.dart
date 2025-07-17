import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:project_core/shared/extensions/sized_box.dart';

class RecentAndAddBills extends StatelessWidget {
  const RecentAndAddBills({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 8),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          // Left: Title
          Text(
            'Recent Bills',
            style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
          ),

          // Right: Add Bills Button
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 12, vertical: 6),
            decoration: BoxDecoration(
              color: Color(0xFF1E1E1E),
              borderRadius: BorderRadius.circular(8),
            ),
            child: Row(
              children: [
                Icon(Icons.add, size: 16, color: Colors.amberAccent),
                6.spaceX,
                Text(
                  'Add Bills',
                  style: TextStyle(
                    fontSize: 14,
                    fontWeight: FontWeight.w500,
                    color: Colors.amberAccent,
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
