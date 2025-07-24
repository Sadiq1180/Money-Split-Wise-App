import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:project_core/presentation/base_widgets/app_bottom_padding.dart';
import 'package:project_core/shared/constants/app_colors.dart';
import 'package:project_core/shared/constants/app_textstyle.dart';
import 'package:project_core/shared/shared.dart';

class BottomTextAction extends StatelessWidget {
  final String prefixText;
  final String actionText;
  final VoidCallback onTap;

  const BottomTextAction({
    super.key,
    required this.prefixText,
    required this.actionText,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return AppBottomPadding(
      child: RichText(
        textAlign: TextAlign.center,
        text: TextSpan(
          text: prefixText,
          style: AppTextstyle.bodyTextStyle(
            fontSize: 14,
            fontWeight: FontWeight.w400,
            color: context.theme.textTheme.bodyMedium!.color!,
          ),
          children: [
            TextSpan(
              text: actionText,
              style: AppTextstyle.bodyTextStyle(
                fontSize: 14,
                fontWeight: FontWeight.w600,
                color: AppColors.secondary,
              ),
              recognizer: TapGestureRecognizer()..onTap = onTap,
            ),
          ],
        ),
      ),
    );
  }
}
