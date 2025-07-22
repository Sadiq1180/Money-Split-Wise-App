import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';

final vslue = StateProvider<int>((ref) => 0);

class InsightsScreen extends ConsumerWidget {
  static const String routeName = "insights";
  const InsightsScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final value = ref.watch(vslue);
    return Container(
      color: const Color(0xFF121212),
      padding: const EdgeInsets.all(16),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const Text(
            "Insights",
            style: TextStyle(
              fontSize: 24,
              fontWeight: FontWeight.bold,
              color: Colors.white,
            ),
          ),
          const SizedBox(height: 20),

          // Total Balance
          Container(
            padding: const EdgeInsets.all(16),
            decoration: BoxDecoration(
              color: const Color(0xFF1E1E1E),
              borderRadius: BorderRadius.circular(12),
            ),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                Text("Total Balance", style: TextStyle(color: Colors.white70)),
                SizedBox(height: 8),
                Text(
                  "\$130",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 22,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          ),

          const SizedBox(height: 20),

          // You owe / You're owed
          Row(
            children: [
              _InfoCard(
                label: "You Owe",
                amount: "\$80",
                color: Colors.redAccent,
              ),
              const SizedBox(width: 12),
              _InfoCard(
                label: "You're Owed",
                amount: "\$210",
                color: Colors.greenAccent,
              ),
            ],
          ),
          const SizedBox(height: 20),

          // Top Friends
          const Text(
            "Top Friends",
            style: TextStyle(
              color: Colors.white70,
              fontWeight: FontWeight.bold,
            ),
          ),

          const SizedBox(height: 12),
          _FriendRow(name: "Ali", amount: "\$40", isPositive: true),
          _FriendRow(name: "Khan", amount: "\$70", isPositive: false),
          _FriendRow(name: "Sara", amount: "\$20", isPositive: true),
          const SizedBox(height: 20),

          // Chart placeholder
          Container(
            height: 120,
            width: double.infinity,
            decoration: BoxDecoration(
              color: const Color(0xFF1E1E1E),
              borderRadius: BorderRadius.circular(12),
            ),
            child: const Center(
              child: Text(
                "This is Dummy Screen",
                style: TextStyle(
                  color: Colors.redAccent,
                  fontSize: 20,
                  fontWeight: FontWeight.w300,
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}

class _InfoCard extends StatelessWidget {
  final String label;
  final String amount;
  final Color color;

  const _InfoCard({
    required this.label,
    required this.amount,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Expanded(
      child: Container(
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: const Color(0xFF1E1E1E),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Column(
          children: [
            Text(
              label,
              style: TextStyle(color: color, fontWeight: FontWeight.w500),
            ),
            const SizedBox(height: 6),
            Text(
              amount,
              style: const TextStyle(color: Colors.white, fontSize: 16),
            ),
          ],
        ),
      ),
    );
  }
}

class _FriendRow extends StatelessWidget {
  final String name;
  final String amount;
  final bool isPositive;

  const _FriendRow({
    required this.name,
    required this.amount,
    required this.isPositive,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(vertical: 6),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Text(name, style: const TextStyle(color: Colors.white)),
          Text(
            isPositive ? "+$amount" : "-$amount",
            style: TextStyle(
              color: isPositive ? Colors.greenAccent : Colors.redAccent,
              fontWeight: FontWeight.bold,
            ),
          ),
        ],
      ),
    );
  }
}
