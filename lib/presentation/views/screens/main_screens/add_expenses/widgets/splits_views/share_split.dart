import 'package:flutter/material.dart';
import 'package:project_core/presentation/views/screens/main_screens/add_expenses/widgets/group_container.dart';
import 'package:project_core/shared/shared.dart';

class ShareSplit extends StatelessWidget {
  const ShareSplit({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        GroupContainer(
          groupName: "Saad Khan",
          description: "200",
          imageSize: 50,
          groupImage: Icon(Icons.person, color: Colors.white, size: 30),
          trailing: SizedBox(
            width: 140,
            child: Row(
              children: [
                const Icon(Icons.pie_chart, color: Colors.grey, size: 22),
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
        10.spaceY,
        GroupContainer(
          groupName: "Asad Khan",
          description: "300",
          imageSize: 50,
          groupImage: Icon(Icons.person, color: Colors.white, size: 30),
          trailing: SizedBox(
            width: 140,
            child: Row(
              children: [
                const Icon(Icons.pie_chart, color: Colors.grey, size: 22),
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
        290.spaceY,
        Divider(color: Colors.white),
        Center(
          child: Column(
            children: [
              Text("10 total Shares", style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
      ],
    );
  }
}
