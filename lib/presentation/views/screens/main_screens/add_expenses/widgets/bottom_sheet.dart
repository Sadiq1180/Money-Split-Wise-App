import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:project_core/presentation/views/screens/main_screens/add_expenses/widgets/group_container.dart';
import 'package:project_core/presentation/views/screens/main_screens/login_screen/widgets/social_buttons.dart';
import 'package:project_core/shared/constants/app_colors.dart';
import 'package:project_core/shared/extensions/sized_box.dart';

final splitOptionProvider = StateProvider<String>((ref) => 'Equally');

void showSplitOptions(BuildContext context) {
  showModalBottomSheet(
    isScrollControlled: true,
    backgroundColor: Colors.transparent,
    context: context,
    builder: (context) {
      return Padding(
        padding: EdgeInsets.only(
          bottom: MediaQuery.of(context).viewInsets.bottom,
        ),
        child: Consumer(
          builder: (context, ref, _) {
            final selected = ref.watch(splitOptionProvider);
            Widget categories(String name, String desc, IconData icon) {
              return GroupContainer(
                imageSize: 50,
                groupName: name,
                description: desc,
                groupImage: Icon(icon, color: Colors.white),
                borderColor: selected == name
                    ? Colors.yellow
                    : Colors.grey[600],
                onTap: () {
                  ref.read(splitOptionProvider.notifier).state = name;
                },
              );
            }

            return Container(
              decoration: BoxDecoration(
                color: AppColors.dark,
                borderRadius: BorderRadius.vertical(top: Radius.circular(20)),
              ),
              padding: const EdgeInsets.all(20),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(
                    "Select Split Option",
                    style: TextStyle(
                      color: Colors.white,
                      fontSize: 18,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  16.spaceY,
                  categories(
                    "Equally",
                    "Everything will split equally.",
                    Icons.view_agenda_outlined,
                  ),
                  10.spaceY,
                  categories(
                    "Unequally",
                    "Unequal shares based on actual amounts.",
                    Icons.scale_outlined,
                  ),
                  10.spaceY,
                  categories(
                    "By Percentage",
                    "Split based on custom percentages.",
                    Icons.percent,
                  ),
                  10.spaceY,
                  categories(
                    "By Shares",
                    "Split based on number of shares.",
                    Icons.pie_chart,
                  ),
                  10.spaceY,
                  categories(
                    "By Adjustment",
                    "Custom amount for each person.",
                    Icons.tune,
                  ),
                  20.spaceY,
                  SizedBox(
                    width: double.infinity,
                    child: CustomElevatedButton(
                      onPressed: () {
                        Navigator.pop(context);
                      },
                      isOutlined: false,
                      text: "Select",
                    ),
                  ),
                ],
              ),
            );
          },
        ),
      );
    },
  );
}
