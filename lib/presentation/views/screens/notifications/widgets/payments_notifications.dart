import 'package:flutter/material.dart';
import 'package:project_core/shared/shared.dart';

class PaymentNotificationWidget extends StatelessWidget {
  final String primaryMessage;
  final double paidAmount;
  final String currency;
  final double owedAmount;
  final IconData? icon;
  final String? secondaryMessage;

  const PaymentNotificationWidget({
    super.key,
    required this.primaryMessage,
    required this.paidAmount,
    this.currency = '£',
    required this.owedAmount,
    this.icon,
    this.secondaryMessage,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 16),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Icon
              Container(
                width: 26,
                height: 26,
                decoration: const BoxDecoration(shape: BoxShape.circle),
                child: Center(
                  child: Icon(
                    icon ?? Icons.receipt_long_rounded,
                    color: Colors.redAccent,
                    size: 24,
                  ),
                ),
              ),
              const SizedBox(width: 12),

              // Messages
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      primaryMessage,
                      overflow: TextOverflow.ellipsis,
                      maxLines: 1,

                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Row(
                      children: [
                        Text(
                          secondaryMessage ?? 'and you owe him',
                          style: const TextStyle(
                            color: AppColors.textWhite,
                            fontSize: 14,
                          ),
                        ),
                        Text(
                          ' $currency${owedAmount.toStringAsFixed(2)}',
                          style: const TextStyle(
                            color: Colors.redAccent,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
        5.spaceY,
        // Divider
        const Padding(
          padding: EdgeInsets.symmetric(horizontal: 16),
          child: Divider(color: Colors.white24, thickness: 1, height: 0),
        ),
      ],
    );
  }
}
