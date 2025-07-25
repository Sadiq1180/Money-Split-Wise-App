import 'package:flutter/material.dart';
import 'package:project_core/presentation/views/screens/main_screens/add_expenses/widgets/group_container.dart';
import 'package:project_core/presentation/views/screens/main_screens/add_expenses/widgets/splits_types/split_amout_field.dart';
import 'package:project_core/shared/extensions/sized_box.dart';

class AdjustmentSplit extends StatelessWidget {
  const AdjustmentSplit({super.key});

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
            icon: Icon(Icons.tune, color: Colors.white),
          ),
        ),
        10.spaceY,
        GroupContainer(
          groupName: "Saad Khan",
          description: "200",
          imageSize: 50,
          groupImage: Icon(Icons.person, color: Colors.white, size: 30),
          trailing: const SplitAmountField(
            icon: Icon(Icons.tune, color: Colors.white),
          ),
        ),
      ],
    );
  }
}
