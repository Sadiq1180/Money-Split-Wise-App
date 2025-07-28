import 'package:flutter/material.dart';
import 'package:project_core/shared/constants/app_colors.dart';

class ExpenseCard extends StatelessWidget {
  final String title;
  final double amount;
  final double originalAmount;
  final String subtitle;

  const ExpenseCard({
    Key? key,
    required this.title,
    required this.amount,
    required this.originalAmount,
    required this.subtitle,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 180,
      // height: 200,
      margin: EdgeInsets.only(right: 12),
      child: ColoredBox(
        color: Colors.transparent,
        child: Stack(
          fit: StackFit.loose,
          clipBehavior: Clip.none,
          children: [
            // Card background
            Container(
              height: 150,
              decoration: BoxDecoration(
                color: AppColors.darkerGrey,
                borderRadius: BorderRadius.circular(12),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.2),
                    blurRadius: 8,
                    offset: Offset(0, 4),
                  ),
                ],
              ),
              padding: EdgeInsets.all(
                12,
              ).copyWith(bottom: 52), // leave space for the button
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // Title + menu
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Expanded(
                        child: Text(
                          title,
                          style: TextStyle(
                            color: Colors.white,
                            fontWeight: FontWeight.w600,
                            fontSize: 13,
                          ),
                          maxLines: 2,
                          overflow: TextOverflow.ellipsis,
                        ),
                      ),
                      Icon(Icons.more_vert, color: Colors.white54, size: 18),
                    ],
                  ),
                  SizedBox(height: 12),

                  // Amount / Total
                  RichText(
                    text: TextSpan(
                      children: [
                        TextSpan(
                          text: '£${amount.toStringAsFixed(2)}',
                          style: TextStyle(
                            fontSize: 22,
                            color: Colors.white,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        TextSpan(
                          text: ' / £${originalAmount.toStringAsFixed(2)}',
                          style: TextStyle(
                            fontSize: 12,
                            color: Colors.white54,
                            fontWeight: FontWeight.w400,
                          ),
                        ),
                      ],
                    ),
                  ),

                  SizedBox(height: 4),

                  // Subtitle
                  Text(
                    subtitle,
                    style: TextStyle(color: Colors.white70, fontSize: 12),
                  ),
                ],
              ),
            ),

            // Button at the bottom
            Positioned(
              bottom: 0,
              left: 12,
              right: 12,
              child: GestureDetector(
                onTap: () {},
                child: Container(
                  margin: EdgeInsets.symmetric(horizontal: 12),
                  padding: EdgeInsets.symmetric(vertical: 10),
                  decoration: BoxDecoration(
                    color: Color(0xFFFFC107),
                    borderRadius: BorderRadius.circular(8),
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Icon(
                        Icons.compare_arrows,
                        color: Color(0xFF1f1f2e),
                        size: 16,
                      ),
                      SizedBox(width: 6),
                      Text(
                        'Split the Bill',
                        style: TextStyle(
                          color: Color(0xFF1f1f2e),
                          fontSize: 13,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
