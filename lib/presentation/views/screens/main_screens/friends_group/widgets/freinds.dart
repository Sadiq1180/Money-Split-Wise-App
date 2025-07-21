import 'package:flutter/material.dart';

class FriendsProfile extends StatelessWidget {
  final String name;
  final double amount;
  final String currency;
  final String? profileImage;
  final IconData? icon;

  const FriendsProfile({
    Key? key,
    required this.name,
    required this.amount,
    this.currency = '£',
    this.profileImage,
    this.icon,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(15.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              // Avatar
              Container(
                width: 45,
                height: 45,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(8),
                  child: profileImage != null
                      ? Image.asset(profileImage!, fit: BoxFit.cover)
                      : Icon(
                          icon ?? Icons.person,
                          color: Colors.white,
                          size: 24,
                        ),
                ),
              ),
              const SizedBox(width: 12),

              // Name and Amount
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      name,
                      style: const TextStyle(
                        color: Colors.white,
                        fontSize: 16,
                        fontWeight: FontWeight.w600,
                      ),
                    ),
                    const SizedBox(height: 4),
                    Text(
                      'Owes You $currency${amount.toStringAsFixed(2)}',
                      style: TextStyle(
                        color: amount >= 0
                            ? Colors.greenAccent
                            : Colors.redAccent,
                        fontSize: 14,
                      ),
                    ),

                    // Divider
                  ],
                ),
              ),
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 20),
          child: Divider(color: Colors.white24, thickness: 1, height: 0),
        ),
      ],
    );
  }
}
