import 'package:flutter/material.dart';
import 'package:project_core/presentation/views/screens/main_screens/add_expenses/widgets/bottom_sheet.dart';
import 'package:project_core/presentation/views/screens/main_screens/add_expenses/widgets/group_container.dart';
import 'package:project_core/presentation/widgets/custom_title.dart';
import 'package:project_core/shared/constants/app_colors.dart';
import 'package:project_core/shared/extensions/sized_box.dart';

class AdjustSplit extends StatelessWidget {
  static const String routeName = "Adjustsplit";
  const AdjustSplit({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.dark,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 18.0, vertical: 20.0),
          child: Column(
            children: [
              CustomTitle(title: "Adjust Split"),
              20.spaceY,
              GroupContainer(
                rightIcon: Icons.chevron_right_sharp,
                groupImage: Icon(
                  Icons.view_agenda_outlined,
                  color: Colors.white,
                ),
                groupName: "Equally",
                description: "Everyone will equal Share ",
                onTap: () {
                  showSplitOptions(context);
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
