import 'package:flutter/gestures.dart';
import 'package:flutter/material.dart';
import 'package:project_core/presentation/base_widgets/app_bottom_padding.dart';
import 'package:project_core/shared/constants/app_textstyle.dart';
import 'package:project_core/shared/shared.dart';

class TermsPolicyWidget extends StatelessWidget {
  const TermsPolicyWidget({super.key});
  @override
  Widget build(BuildContext context) {
    return AppBottomPadding(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: RichText(
          textAlign: TextAlign.center,
          text: TextSpan(
            style: AppTextstyle.bodyTextStyle(
              fontSize: 12,

              fontWeight: FontWeight.w400,
              color: context.theme.textTheme.bodySmall!.color!,
            ),
            children: [
              TextSpan(text: "By continuing, you agree to Splitwise's"),
              TextSpan(
                text: "Terms and Conditions",
                style: AppTextstyle.bodyTextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: context.theme.textTheme.bodySmall!.color!,
                ),
                recognizer: TapGestureRecognizer(),
                // ..onTap = () =>launchInBrowser(AppConstants.termsAndCondition),
              ),
              TextSpan(text: ' and '),
              TextSpan(
                text: "Privacy Policy",
                style: AppTextstyle.bodyTextStyle(
                  decoration: TextDecoration.underline,
                  fontSize: 12,
                  fontWeight: FontWeight.w400,
                  color: context.theme.textTheme.bodySmall!.color!,
                ),
                recognizer: TapGestureRecognizer(),
                // ..onTap = () =>launchInBrowser(AppConstants.privacyPolicy),
              ),
              TextSpan(text: '.'),
            ],
          ),
        ),
      ),
    );
  }
}
