import 'package:flutter/material.dart';
import 'package:project_core/presentation/views/screens/add_expenses/widgets/group_container.dart';
import 'package:project_core/presentation/views/screens/add_expenses/widgets/splits_types/split_amout_field.dart';
import 'package:project_core/presentation/views/screens/onboarding_screens/widgets/social_buttons.dart';
import 'package:project_core/shared/extensions/sized_box.dart';

class AdjustmentSplit extends StatelessWidget {
  const AdjustmentSplit({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> people = [
      {'name': 'Saad Khan', 'amount': 200},
      {'name': 'Ahmad Ali', 'amount': 300},
      {'name': 'Zaid Ali', 'amount': 400},
    ];

    return Column(
      children: [
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
                //right side field with icon
                trailing: const SplitAmountField(
                  icon: Icon(Icons.tune, color: Colors.white),
                ),
              );
            },
          ),
        ),
        20.spaceY,
        const Divider(color: Colors.white),
        30.spaceY,

        /// adjust split date here
        //
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
