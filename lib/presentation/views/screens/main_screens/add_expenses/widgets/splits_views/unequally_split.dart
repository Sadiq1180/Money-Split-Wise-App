import 'package:flutter/material.dart';
import 'package:project_core/presentation/views/screens/main_screens/add_expenses/widgets/group_container.dart';

class UnequallySplit extends StatelessWidget {
  const UnequallySplit({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      // ✅ Prevent overflow
      padding: const EdgeInsets.all(16),
      child: Column(
        children: [
          GroupContainer(
            groupName: "Saad Khan",
            description: "200",
            imageSize: 50,
            groupImage: const Icon(Icons.person, color: Colors.white, size: 30),
            trailing: const SplitAmountField(),
          ),
          const SizedBox(height: 10),
          GroupContainer(
            groupName: "Saad Khan",
            description: "200",
            imageSize: 50,
            groupImage: const Icon(Icons.person, color: Colors.white, size: 30),
            trailing: const SplitAmountField(),
          ),
          const SizedBox(height: 10),
          GroupContainer(
            groupName: "Saad Khan",
            description: "200",
            imageSize: 50,
            groupImage: const Icon(Icons.person, color: Colors.white, size: 30),
            trailing: const SplitAmountField(),
          ),

          const SizedBox(height: 40), // ✅ Reduced from 200 to prevent overflow
          const Divider(color: Colors.white),
          const SizedBox(height: 12),
          const Center(
            child: Column(
              children: [
                Text(
                  "\$0.00 of \$ 100",
                  style: TextStyle(color: Colors.white, fontSize: 15),
                ),
                Text("(\$100.00 left)", style: TextStyle(color: Colors.white)),
              ],
            ),
          ),
        ],
      ),
    );
  }
}

class SplitAmountField extends StatelessWidget {
  const SplitAmountField({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 140,
      child: Row(
        children: [
          const Icon(Icons.scale_outlined, color: Colors.grey, size: 22),
          const SizedBox(width: 8),
          Expanded(
            child: TextField(
              style: const TextStyle(color: Colors.white, fontSize: 14),
              decoration: InputDecoration(
                hintText: "\$",
                hintStyle: TextStyle(color: Colors.grey[400], fontSize: 13),
                contentPadding: const EdgeInsets.symmetric(
                  horizontal: 8,
                  vertical: 8,
                ),
                filled: true,
                fillColor: Colors.grey[800],
                border: OutlineInputBorder(
                  borderRadius: BorderRadius.circular(8),
                  borderSide: BorderSide.none,
                ),
              ),
              keyboardType: TextInputType.number,
            ),
          ),
        ],
      ),
    );
  }
}
