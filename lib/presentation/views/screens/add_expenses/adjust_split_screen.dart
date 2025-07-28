import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:project_core/presentation/base_widgets/keyboard_aware.dart';
import 'package:project_core/presentation/views/screens/add_expenses/widgets/bottom_sheet.dart';
import 'package:project_core/presentation/views/screens/add_expenses/widgets/group_container.dart';
import 'package:project_core/presentation/views/screens/add_expenses/widgets/splits_types/adjustment_split.dart';
import 'package:project_core/presentation/views/screens/add_expenses/widgets/splits_types/equally_split.dart';
import 'package:project_core/presentation/views/screens/add_expenses/widgets/splits_types/percentage_split.dart';
import 'package:project_core/presentation/views/screens/add_expenses/widgets/splits_types/share_split.dart';
import 'package:project_core/presentation/views/screens/add_expenses/widgets/splits_types/unequally_split.dart';
import 'package:project_core/presentation/widgets/custom_title.dart';
import 'package:project_core/shared/constants/app_colors.dart';
import 'package:project_core/shared/extensions/sized_box.dart';

class AdjustSplit extends ConsumerWidget {
  static const String routeName = "Adjustsplit";
  const AdjustSplit({super.key});

  Widget buildSplitContent(String selected) {
    switch (selected) {
      case 'Equally':
        return const SplitEqually();
      case 'Unequally':
        return const UnequallySplit();

      case "By Percentage":
        return const PercentageSplit();
      case "By Shares":
        return const ShareSplit();
      case "By Adjustment":
        return const AdjustmentSplit();
      default:
        return Text(
          "Coming soon for $selected...",
          style: TextStyle(color: Colors.white),
        );
    }
  }

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    final selected = ref.watch(splitOptionProvider);

    return Scaffold(
      appBar: CustomTitle(title: "Adjust Split"),
      backgroundColor: AppColors.dark,
      body: SafeArea(
        child: KeyboardAware(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 18.0,
              // vertical: 20.0,
            ),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                20.spaceY,
                GroupContainer(
                  borderColor: Colors.yellow,
                  trailing: Icon(
                    Icons.chevron_right_outlined,
                    color: Colors.grey,
                  ),
                  groupImage: Icon(
                    Icons.view_agenda_outlined,
                    color: Colors.white,
                  ),
                  groupName: selected,
                  imageSize: 50,
                  description: "Choose how you want to split",
                  onTap: () => showSplitOptions(context),
                ),
                20.spaceY,
                // Wrap the split content to prevent overflow
                Expanded(child: buildSplitContent(selected)),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
