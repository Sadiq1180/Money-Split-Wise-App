import 'package:flutter/material.dart';
import 'package:project_core/presentation/views/screens/add_expenses/widgets/group_container.dart';
import 'package:project_core/presentation/views/screens/add_expenses/widgets/splits_types/split_amout_field.dart';
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
          trailing: const SplitAmountField(
            icon: Icon(Icons.pie_chart, color: Colors.white),
          ),
        ),
        10.spaceY,
        GroupContainer(
          groupName: "Asad Khan",
          description: "300",
          imageSize: 50,
          groupImage: Icon(Icons.person, color: Colors.white, size: 30),
          trailing: const SplitAmountField(
            icon: Icon(Icons.pie_chart, color: Colors.white),
          ),
        ),
        40.spaceY,
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
