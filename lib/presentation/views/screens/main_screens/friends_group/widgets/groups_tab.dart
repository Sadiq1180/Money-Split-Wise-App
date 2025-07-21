import 'package:flutter/material.dart';
import 'package:project_core/presentation/views/screens/main_screens/friends_group/widgets/bill_split_card.dart';
import 'package:project_core/presentation/views/screens/main_screens/friends_group/widgets/my_groups.dart';
import 'package:project_core/presentation/views/screens/main_screens/home_screen/widgets/recent_bills.dart';
import 'package:project_core/shared/shared.dart';

class GroupsTab extends StatelessWidget {
  const GroupsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          BillSplitCard(groupCount: 3, amountOwed: 90.00, totalAmount: 460.00),
          10.spaceY,
          // my groups title
          TitleWithOptionalButton(
            title: "My Groups",
            buttonText: "Add new",
            buttonTextStyle: TextStyle(
              color: Colors.green,
              fontWeight: FontWeight.w500,
            ),
          ),
          //my groups data
          MyGroups(
            title: "isle of weigh trip",
            icon: Icons.beach_access,
            rightIcon: Icons.keyboard_arrow_up_outlined,
          ),
          10.spaceY,
          MyGroups(
            title: "Odeon cinema",
            subtitle1: "ali owes you \$10",
            subtitle2: "khan owes you \$20",
            icon: Icons.circle_outlined,
            rightIcon: Icons.keyboard_arrow_right_outlined,
          ),
          10.spaceY,
          MyGroups(
            title: "House Rent",
            subtitle1: "ali owes you \$100",
            subtitle2: "khan owes you \$150",
            icon: Icons.home,
            rightIcon: Icons.keyboard_arrow_right_outlined,
          ),
          10.spaceY,
          MyGroups(
            title: "England Trip",
            subtitle1: "ali owes you \$100",
            subtitle2: "khan owes you \$150",
            icon: Icons.baby_changing_station,
            rightIcon: Icons.keyboard_arrow_right_outlined,
          ),
        ],
      ),
    );
  }
}
