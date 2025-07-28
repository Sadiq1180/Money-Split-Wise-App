import 'package:flutter/material.dart';
import 'package:project_core/presentation/views/screens/add_expenses/widgets/group_container.dart';
import 'package:project_core/shared/extensions/sized_box.dart';

import '../../../onboarding_screens/widgets/social_buttons.dart';

class SplitEqually extends StatelessWidget {
  const SplitEqually({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> people = [
      {'name': 'Sadiq Ali', 'amount': 500},
      {'name': 'Ahmad Ali', 'amount': 200},
      {'name': 'Saad Khan', 'amount': 150},
      {'name': 'Zaid Ali', 'amount': 250},
      {'name': 'Usman Khan', 'amount': 300},
    ];

    return Column(
      children: [
        Expanded(
          child: ListView.separated(
            itemCount: people.length,
            separatorBuilder: (context, index) => 10.spaceY,
            itemBuilder: (BuildContext context, int index) {
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
                trailing: const Icon(Icons.check_box, color: Colors.amber),
              );
            },
          ),
        ),
        const Divider(color: Colors.white),
        Center(
          child: Column(
            children: const [
              Text("\$25.00 / person", style: TextStyle(color: Colors.white)),
              Text("(4 people)", style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
        10.spaceY,
        Padding(
          padding: const EdgeInsets.only(bottom: 20, right: 15, left: 15),
          child: SizedBox(
            width: double.infinity,
            child: CustomElevatedButton(
              onPressed: () {},
              isOutlined: false,
              text: "Done",
            ),
          ),
        ),
      ],
    );
  }
}
