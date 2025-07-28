import 'package:flutter/material.dart';
import 'package:project_core/presentation/views/screens/add_expenses/widgets/group_container.dart';
import 'package:project_core/shared/extensions/sized_box.dart';

import '../../../onboarding_screens/widgets/social_buttons.dart';

class SplitEqually extends StatelessWidget {
  const SplitEqually({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Expanded(child: ListView.separated(
          itemCount: 5,
          separatorBuilder: (context, index) => 10.spaceY,
          itemBuilder: (BuildContext context, int index) {
            return GroupContainer(
          groupName: "Ahmad Ali",
          description: "200",
          imageSize: 50,
          groupImage: Icon(Icons.person, color: Colors.white, size: 30),
          trailing: Icon(Icons.check_box, color: Colors.amber),
        );
          },
        ),),
        // GroupContainer(
        //   groupName: "Sadiq Ali",
        //   description: "500",
        //   imageSize: 50,
        //   groupImage: Icon(Icons.person, color: Colors.white, size: 30),
        //   trailing: Icon(Icons.check_box, color: Colors.amber),
        // ),
        // 10.spaceY,
        // GroupContainer(
        //   groupName: "Ahmad Ali",
        //   description: "200",
        //   imageSize: 50,
        //   groupImage: Icon(Icons.person, color: Colors.white, size: 30),
        //   trailing: Icon(Icons.check_box, color: Colors.amber),
        // ),
        // 10.spaceY,
        // GroupContainer(
        //   groupName: "Saad Khan",
        //   description: "150",
        //   imageSize: 50,
        //   groupImage: Icon(Icons.person, color: Colors.white, size: 30),
        //   trailing: Icon(Icons.check_box, color: Colors.amber),
        // ),
        // 40.spaceY,
        const Divider(color: Colors.white),
        Center(
          child: Column(
            children: const [
              Text("\$25.00 / person", style: TextStyle(color: Colors.white)),
              Text("(4 people)", style: TextStyle(color: Colors.white)),
            ],
          ),
        ),
         Padding(
        padding: const EdgeInsets.only(bottom: 20, right: 15, left: 15),
        child: CustomElevatedButton(
          onPressed: () {},
          isOutlined: false,
          text: "Done",
        ),
      )
      ],
    );
  }
}
