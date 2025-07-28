import 'package:flutter/material.dart';
import 'package:project_core/shared/shared.dart';

class BillSplitCard extends StatelessWidget {
  final int groupCount;
  final double amountOwed;
  final double totalAmount;
  final VoidCallback? onSplitBill;

  const BillSplitCard({
    Key? key,
    required this.groupCount,
    required this.amountOwed,
    required this.totalAmount,
    this.onSplitBill,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: const EdgeInsets.symmetric(horizontal: 16, vertical: 2),
      padding: const EdgeInsets.all(20),
      decoration: BoxDecoration(
        color: AppColors.darkerGrey,
        borderRadius: BorderRadius.circular(16),
      ),
      child: Row(
        children: [
          // Left side - Bill info
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                // Groups count
                Text(
                  '$groupCount Groups',
                  style: const TextStyle(
                    color: Color(0xFFFFB347), // Orange color
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
                Divider(color: AppColors.darkGrey),

                const SizedBox(height: 12),

                // Amount section
                Row(
                  crossAxisAlignment: CrossAxisAlignment.center,
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    // Main amount
                    Text(
                      '£${amountOwed.toStringAsFixed(2)}',
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 20,
                        fontWeight: FontWeight.bold,
                      ),
                    ),

                    // Total amount
                    Text(
                      '/£${totalAmount.toStringAsFixed(2)}',
                      style: const TextStyle(
                        color: Colors.grey,
                        fontSize: 16,
                        fontWeight: FontWeight.w400,
                      ),
                    ),
                    6.spaceX,
                    //Split Bill Button
                    ElevatedButton.icon(
                      onPressed: onSplitBill ?? () {},
                      icon: const Icon(
                        Icons.call_split,
                        color: Colors.black,
                        size: 20,
                      ),
                      label: const Text(
                        'Split the Bill',
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 14,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                      style: ElevatedButton.styleFrom(
                        backgroundColor: const Color(0xFFFFB347),
                        foregroundColor: Colors.black,
                        elevation: 0,
                        padding: const EdgeInsets.symmetric(
                          horizontal: 14,
                          vertical: 12,
                        ),
                        shape: RoundedRectangleBorder(
                          borderRadius: BorderRadius.circular(10),
                        ),
                      ),
                    ),
                  ],
                ),

                // you owed
                const Text(
                  'You Owed',
                  style: TextStyle(
                    color: Colors.grey,
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                  ),
                ),
              ],
            ),
          ),

          // 10.spaceX,
        ],
      ),
    );
  }
}
