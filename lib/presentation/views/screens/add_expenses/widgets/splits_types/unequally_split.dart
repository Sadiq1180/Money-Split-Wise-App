import 'package:flutter/material.dart';
import 'package:project_core/presentation/views/screens/add_expenses/widgets/group_container.dart';
import 'package:project_core/presentation/views/screens/add_expenses/widgets/splits_types/split_amout_field.dart';
import 'package:project_core/presentation/views/screens/onboarding_screens/widgets/social_buttons.dart';
import 'package:project_core/shared/shared.dart';

class UnequallySplit extends StatelessWidget {
  const UnequallySplit({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> people = [
      {'name': 'Sadiq Ali', 'amount': 200},
      {'name': 'Ahmad Ali', 'amount': 300},
      {'name': 'Zaid Khan', 'amount': 500},
    ];

    return Column(
      children: [
        // main content
        Expanded(
          child: SingleChildScrollView(
            child: ListView.separated(
              itemCount: people.length,
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
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
                    icon: Icon(Icons.scale_outlined, color: Colors.white),
                  ),
                );
              },
            ),
          ),
        ),
        //
        20.spaceY,
        const Divider(color: Colors.white),
        const Center(
          child: Column(
            children: [
              Text("\$25.00 / person", style: TextStyle(color: Colors.white)),
              Text("(4 people)", style: TextStyle(color: Colors.white)),
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
