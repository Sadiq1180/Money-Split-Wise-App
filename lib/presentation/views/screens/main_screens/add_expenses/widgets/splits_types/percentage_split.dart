import 'package:flutter/material.dart';
import 'package:project_core/presentation/views/screens/main_screens/add_expenses/widgets/group_container.dart';
import 'package:project_core/presentation/views/screens/main_screens/add_expenses/widgets/splits_types/split_amout_field.dart';
import 'package:project_core/shared/extensions/sized_box.dart';

class PercentageSplit extends StatelessWidget {
  const PercentageSplit({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          GroupContainer(
            groupName: "Saad Khan",
            description: "200",
            imageSize: 50,
            groupImage: const Icon(Icons.person, color: Colors.white, size: 30),
            trailing: const SplitAmountField(
              icon: Icon(Icons.percent, color: Colors.white),
            ),
          ),
          10.spaceY,
          GroupContainer(
            groupName: "Saad Khan",
            description: "200",
            imageSize: 50,
            groupImage: const Icon(Icons.person, color: Colors.white, size: 30),
            trailing: const SplitAmountField(
              icon: Icon(Icons.percent, color: Colors.white),
            ),
          ),
          10.spaceY,
          GroupContainer(
            groupName: "Saad Khan",
            description: "200",
            imageSize: 50,
            groupImage: const Icon(Icons.person, color: Colors.white, size: 30),
            trailing: const SplitAmountField(
              icon: Icon(Icons.percent, color: Colors.white),
            ),
          ),
          40.spaceY,
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
      ),
    );
  }
}
