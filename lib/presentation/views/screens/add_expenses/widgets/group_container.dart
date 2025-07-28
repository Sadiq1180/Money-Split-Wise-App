import 'package:flutter/material.dart';

class GroupContainer extends StatelessWidget {
  final String? groupName;
  final String? suffixText;
  final String? description;
  final Widget? groupImage;
  final double imageSize;
  final VoidCallback? onTap;
  final Color? borderColor;
  final Widget? trailing;

  const GroupContainer({
    Key? key,
    this.groupName,
    this.suffixText,
    this.description,
    this.groupImage,
    this.imageSize = 36.0,
    this.onTap,
    this.borderColor,
    this.trailing,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: description != null ? 70 : 50,
      padding: const EdgeInsets.symmetric(horizontal: 6),
      decoration: BoxDecoration(
        color: Colors.grey[850],
        border: Border.all(color: borderColor ?? Colors.grey[600]!, width: 1.5),
        borderRadius: BorderRadius.circular(12.0),
      ),
      child: InkWell(
        borderRadius: BorderRadius.circular(12.0),
        onTap: onTap,
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            if (groupImage != null)
              Row(
                children: [
                  Container(
                    width: imageSize,
                    height: imageSize,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(8.0),
                      border: Border.all(color: Colors.grey[500]!),
                    ),
                    child: Center(child: groupImage),
                  ),
                  const SizedBox(width: 14.0),
                ],
              ),
            Expanded(
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text.rich(
                    TextSpan(
                      text: groupName ?? '',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w500,
                      ),
                      children: suffixText != null
                          ? [
                              TextSpan(
                                text: '  ($suffixText)',
                                style: TextStyle(
                                  color: Colors.grey[400],
                                  fontSize: 14,
                                  fontStyle: FontStyle.italic,
                                ),
                              ),
                            ]
                          : [],
                    ),
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                  ),
                  if (description != null)
                    Text(
                      description!,
                      style: TextStyle(color: Colors.grey[400], fontSize: 13),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                    ),
                ],
              ),
            ),
            if (trailing != null)
              Padding(
                padding: const EdgeInsets.only(left: 12.0),
                child: trailing!,
              ),
          ],
        ),
      ),
    );
  }
}
