import 'package:flutter/material.dart';
import 'package:project_core/presentation/views/screens/main_screens/add_expenses/widgets/group_container.dart';

class PercentageSplit extends StatelessWidget {
  const PercentageSplit({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GroupContainer(
          groupName: "Saad Khan",
          description: "200",
          imageSize: 50,
          groupImage: const Icon(Icons.person, color: Colors.white, size: 30),
          trailing: SizedBox(
            width: 140,
            child: Row(
              children: [
                const Icon(Icons.percent, color: Colors.grey, size: 22),
                const SizedBox(width: 8),
                Expanded(
                  child: TextField(
                    style: const TextStyle(color: Colors.white, fontSize: 14),
                    decoration: InputDecoration(
                      hintText: "\$",
                      hintStyle: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 13,
                      ),
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
          ),
        ),
        const SizedBox(height: 10),
        GroupContainer(
          groupName: "Saad Khan",
          description: "200",
          imageSize: 50,
          groupImage: const Icon(Icons.person, color: Colors.white, size: 30),
          trailing: SizedBox(
            width: 140,
            child: Row(
              children: [
                const Icon(Icons.percent, color: Colors.grey, size: 22),
                const SizedBox(width: 8),
                Expanded(
                  child: TextField(
                    style: const TextStyle(color: Colors.white, fontSize: 14),
                    decoration: InputDecoration(
                      hintText: "\$",
                      hintStyle: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 13,
                      ),
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
          ),
        ),
        const SizedBox(height: 10),
        GroupContainer(
          groupName: "Saad Khan",
          description: "200",
          imageSize: 50,
          groupImage: const Icon(Icons.person, color: Colors.white, size: 30),
          trailing: SizedBox(
            width: 140,
            child: Row(
              children: [
                const Icon(Icons.percent, color: Colors.grey, size: 22),
                const SizedBox(width: 8),
                Expanded(
                  child: TextField(
                    style: const TextStyle(color: Colors.white, fontSize: 14),
                    decoration: InputDecoration(
                      hintText: "\$",
                      hintStyle: TextStyle(
                        color: Colors.grey[400],
                        fontSize: 13,
                      ),
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
          ),
        ),
        const SizedBox(height: 200),
        const Divider(color: Colors.white),
        const Center(
          child: Column(
            children: [
              Text("0% of 100%", style: TextStyle(color: Colors.white)),
              Text("(\$100 left)", style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
      ],
    );
  }
}
