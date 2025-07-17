import 'package:flutter/material.dart';
import 'package:project_core/shared/extensions/sized_box.dart';

class AppHeader extends StatelessWidget {
  const AppHeader({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Center(
          child: Image.asset(
            'assets/images/AppLogo.png',
            width: 80,
            height: 80,
            fit: BoxFit.contain,
          ),
        ),
        10.spaceY,
        const Text(
          'MONEY',
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w600,
            color: Colors.white,
            letterSpacing: 4.0,
          ),
        ),
        const Text(
          'SPLITWISE',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.w600,
            color: Color(0xFFD4AF37),
            letterSpacing: 2.0,
          ),
        ),
        16.spaceY,
        const Text(
          'Easily split bills & track your expenses',
          style: TextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: Color(0xFFB0B0B0),
            letterSpacing: 0.5,
          ),
        ),
      ],
    );
  }
}
