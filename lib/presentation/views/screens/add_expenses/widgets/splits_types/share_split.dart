import 'package:flutter/material.dart';
import 'package:project_core/presentation/views/screens/add_expenses/widgets/group_container.dart';
import 'package:project_core/presentation/views/screens/add_expenses/widgets/splits_types/split_amout_field.dart';
import 'package:project_core/presentation/views/screens/onboarding_screens/widgets/social_buttons.dart';
import 'package:project_core/shared/shared.dart';

class ShareSplit extends StatelessWidget {
  const ShareSplit({super.key});

  @override
  Widget build(BuildContext context) {
    final List<Map<String, dynamic>> persons = [
      {"name": "Saad Khan", "amount": "200"},
      {"name": "Asad Khan", "amount": "300"},
    ];
    return Column(
      children: [
        Expanded(
          child: ListView.separated(
            itemCount: persons.length,
            separatorBuilder: (context, index) => 10.spaceY,
            itemBuilder: (context, index) {
              final person = persons[index];
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
        40.spaceY,
        Divider(color: Colors.white),
        Center(
          child: Column(
            children: [
              Text("10 total Shares", style: TextStyle(color: Colors.white)),
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
