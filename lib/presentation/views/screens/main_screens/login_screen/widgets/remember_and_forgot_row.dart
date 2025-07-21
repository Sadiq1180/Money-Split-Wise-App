import 'package:flutter/material.dart';

class RememberMeAndForgotPasswordRow extends StatefulWidget {
  const RememberMeAndForgotPasswordRow({super.key});

  @override
  State<RememberMeAndForgotPasswordRow> createState() =>
      _RememberMeAndForgotPasswordRowState();
}

class _RememberMeAndForgotPasswordRowState
    extends State<RememberMeAndForgotPasswordRow> {
  bool _rememberMe = false;

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Transform.scale(
              scale: 0.8,
              child: Checkbox(
                visualDensity: VisualDensity(horizontal: -4.0, vertical: -4.0),

                value: _rememberMe,
                onChanged: (value) {
                  setState(() {
                    _rememberMe = value ?? false;
                  });
                },
                activeColor: const Color(0xFFD4AF37),
                side: BorderSide(color: Colors.grey[500]!),
              ),
            ),
            const Text(
              'Remember Me',
              style: TextStyle(color: Colors.white, fontSize: 14),
            ),
          ],
        ),
        TextButton(
          onPressed: () {},
          style: TextButton.styleFrom(
            padding: EdgeInsets.zero,
            minimumSize: Size.zero,
            tapTargetSize: MaterialTapTargetSize.shrinkWrap,
          ),
          child: const Text(
            'Forget Password ?',
            style: TextStyle(color: Color(0xFF4CAF50), fontSize: 14),
          ),
        ),
      ],
    );
  }
}
