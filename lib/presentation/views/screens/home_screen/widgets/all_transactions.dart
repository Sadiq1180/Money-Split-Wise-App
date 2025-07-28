import 'package:flutter/material.dart';

class AllTransactions extends StatelessWidget {
  final String title;
  final String date;
  final String time;
  final String price;
  final Color iconColor;
  final IconData iconData;
  final VoidCallback? onTap;

  const AllTransactions({
    Key? key,
    required this.title,
    required this.date,
    required this.time,
    required this.price,
    required this.iconData,
    this.iconColor = const Color(0xFF4FC3F7),
    this.onTap,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 12),
        decoration: BoxDecoration(borderRadius: BorderRadius.circular(8)),
        child: Row(
          children: [
            //- Main Icon Container
            Container(
              width: 40,
              height: 40,
              decoration: BoxDecoration(
                color: iconColor,
                borderRadius: BorderRadius.circular(8),
              ),
              child: Center(
                child: Icon(iconData, color: Colors.white, size: 22),
              ),
            ),

            const SizedBox(width: 12),

            //  Title + Date/Time
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    title,
                    style: const TextStyle(
                      color: Colors.white,
                      fontSize: 16,
                      fontWeight: FontWeight.w600,
                    ),
                  ),
                  const SizedBox(height: 4),
                  Text(
                    '$date | $time',
                    style: TextStyle(
                      color: Colors.grey[400],
                      fontSize: 14,
                      fontWeight: FontWeight.w400,
                    ),
                  ),
                ],
              ),
            ),

            // Price
            Text(
              price,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 16,
                fontWeight: FontWeight.w600,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
