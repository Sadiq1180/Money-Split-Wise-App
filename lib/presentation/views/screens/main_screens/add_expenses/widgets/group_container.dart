import 'package:flutter/material.dart';

class GroupContainer extends StatelessWidget {
  final String groupName;
  final Widget? groupImage;
  final double imageSize;
  final VoidCallback? onTap;

  const GroupContainer({
    Key? key,
    required this.groupName,
    this.groupImage,
    this.imageSize = 36.0,
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(vertical: 4.0, horizontal: 16.0),
      decoration: BoxDecoration(
        color: Colors.grey[800],
        border: Border.all(color: Colors.grey[600]!, width: 1.0),
        borderRadius: BorderRadius.circular(12.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.05),
            blurRadius: 4,
            offset: const Offset(0, 2),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          onTap: onTap,
          borderRadius: BorderRadius.circular(12.0),
          child: Padding(
            padding: const EdgeInsets.all(12.0),
            child: Row(
              children: [
                Container(
                  width: imageSize,
                  height: imageSize,
                  decoration: BoxDecoration(
                    color: Colors.grey[700],
                    borderRadius: BorderRadius.circular(8.0),
                    border: Border.all(color: Colors.grey[600]!, width: 1.0),
                  ),
                  child: Center(
                    child:
                        groupImage ??
                        Icon(
                          Icons.group,
                          color: Colors.grey[400],
                          size: imageSize * 0.6, // Icon scaled to container
                        ),
                  ),
                ),
                const SizedBox(width: 12.0),
                Expanded(
                  child: Text(
                    groupName,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
