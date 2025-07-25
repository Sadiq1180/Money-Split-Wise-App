import 'package:flutter/material.dart';
import 'package:project_core/presentation/views/screens/main_screens/add_expenses/widgets/group_container.dart';
import 'package:project_core/presentation/views/screens/main_screens/add_expenses/widgets/splits_types/split_amout_field.dart';
import 'package:project_core/shared/shared.dart';

class UnequallySplit extends StatelessWidget {
  const UnequallySplit({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: SingleChildScrollView(
        child: Column(
          children: [
            GroupContainer(
              groupName: "Saad Khan",
              description: "200",
              imageSize: 50,
              groupImage: const Icon(
                Icons.person,
                color: Colors.white,
                size: 30,
              ),
              trailing: const SplitAmountField(
                icon: Icon(Icons.scale_outlined, color: Colors.white),
              ),
            ),
            10.spaceY,
            GroupContainer(
              groupName: "Saad Khan",
              description: "200",
              imageSize: 50,
              groupImage: const Icon(
                Icons.person,
                color: Colors.white,
                size: 30,
              ),
              trailing: const SplitAmountField(
                icon: Icon(Icons.scale_outlined, color: Colors.white),
              ),
            ),
            10.spaceY,
            GroupContainer(
              groupName: "Saad Khan",
              description: "200",
              imageSize: 50,
              groupImage: const Icon(
                Icons.person,
                color: Colors.white,
                size: 30,
              ),
              trailing: const SplitAmountField(
                icon: Icon(Icons.scale_outlined, color: Colors.white),
              ),
            ),

            40.spaceY,
            const Divider(color: Colors.white),
            const SizedBox(height: 12),
            const Center(
              child: Column(
                children: [
                  Text(
                    "\$0.00 of \$ 100",
                    style: TextStyle(color: Colors.white, fontSize: 15),
                  ),
                  Text(
                    "(\$100.00 left)",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
