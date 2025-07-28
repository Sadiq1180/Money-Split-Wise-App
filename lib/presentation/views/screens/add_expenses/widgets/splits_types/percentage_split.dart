import 'package:flutter/material.dart';
import 'package:project_core/presentation/views/screens/add_expenses/widgets/group_container.dart';
import 'package:project_core/presentation/views/screens/add_expenses/widgets/splits_types/split_amout_field.dart';
import 'package:project_core/presentation/views/screens/onboarding_screens/widgets/social_buttons.dart';
import 'package:project_core/shared/extensions/sized_box.dart';

class PercentageSplit extends StatelessWidget {
  const PercentageSplit({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> people = [
      {'name': 'Saad Khan', 'amount': 200},
      {'name': 'Ahmad Ali', 'amount': 300},
      {'name': 'Zaid Ali', 'amount': 100},
    ];

    return Column(
      children: [
        // Scrollable list
        Expanded(
          child: ListView.separated(
            itemCount: people.length,
            separatorBuilder: (context, index) => 10.spaceY,
            itemBuilder: (context, index) {
              final person = people[index];
              return GroupContainer(
                groupName: person['name'],
                description: person['amount'].toString(),
                imageSize: 50,
                groupImage: const Icon(
                  Icons.person,
                  color: Colors.white,
                  size: 30,
                ),
                trailing: const SplitAmountField(
                  icon: Icon(Icons.percent, color: Colors.white),
                ),
              );
            },
          ),
        ),

        // Bottom summary
        const Divider(color: Colors.white),
        8.spaceY,
        const Center(
          child: Column(
            children: [
              Text("0% of 100%", style: TextStyle(color: Colors.white)),
              Text("(\$100 left)", style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
        10.spaceY,
        SizedBox(
          width: double.infinity,
          child: CustomElevatedButton(
            onPressed: () {},
            isOutlined: false,
            text: "Done",
          ),
        ),
      ],
    );
  }
}
