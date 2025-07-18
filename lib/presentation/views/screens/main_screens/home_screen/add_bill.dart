import 'package:flutter/material.dart';
import 'package:project_core/presentation/base_widgets/keyboard_aware.dart';
import 'package:project_core/presentation/views/screens/main_screens/home_screen/widgets/recent_splinters.dart';
import 'package:project_core/presentation/widgets/custom_label_field.dart';
import 'package:project_core/presentation/views/screens/main_screens/login_screen/widgets/social_buttons.dart';
import 'package:project_core/shared/constants/app_assets.dart';
import 'package:project_core/shared/constants/app_colors.dart';
import 'package:project_core/shared/extensions/sized_box.dart';

class AddBill extends StatefulWidget {
  static const String routeName = "Add_Bill";

  const AddBill({super.key});

  @override
  State<AddBill> createState() => _AddBillState();
}

class _AddBillState extends State<AddBill> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _dateAndController = TextEditingController();
  final TextEditingController _notesController = TextEditingController();
  final TextEditingController _amountController = TextEditingController();

  @override
  void dispose() {
    _titleController.dispose();
    _dateAndController.dispose();
    _notesController.dispose();
    _amountController.dispose();

    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return KeyboardAware(
      child: Scaffold(
        backgroundColor: AppColors.dark,
        body: SingleChildScrollView(
          child: SafeArea(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  // 🔙 Back and Title
                  Row(
                    children: [
                      GestureDetector(
                        onTap: () => Navigator.pop(context),
                        child: const Icon(
                          Icons.arrow_back_ios,
                          color: Colors.white,
                        ),
                      ),
                      10.spaceX,
                      const Text(
                        "Create a new Bill",
                        style: TextStyle(
                          color: Colors.white,
                          fontSize: 15,
                          fontWeight: FontWeight.w600,
                        ),
                      ),
                    ],
                  ),
                  20.spaceY,

                  /// Main Title Field
                  LabeledTextField(
                    label: "Title",
                    hint: "Durdle Door Trip",
                    controller: _titleController,
                  ),
                  20.spaceY,

                  /// Two Fields in a Row
                  Row(
                    children: [
                      Expanded(
                        child: LabeledTextField(
                          label: "Date",
                          hint: "01/06/2024",
                          controller: _dateAndController,
                        ),
                      ),
                      10.spaceX,
                      Expanded(
                        child: LabeledTextField(
                          label: "Time",
                          hint: "4:00 AM",
                          controller: _notesController,
                        ),
                      ),
                    ],
                  ),
                  20.spaceY,
                  LabeledTextField(
                    label: "Enter Amount",
                    hint: "\$300",
                    controller: _amountController,
                  ),
                  10.spaceY,

                  Text(
                    "Split Money with",
                    style: TextStyle(fontSize: 15, fontWeight: FontWeight.w400),
                  ),
                  10.spaceY,
                  ProfileSelectorWidget(
                    profiles: [
                      ProfileData(
                        imagePath: AppAssets.person1,
                        backgroundColor: AppColors.white,
                      ),
                      ProfileData(
                        imagePath: AppAssets.person2,
                        backgroundColor: AppColors.white,
                      ),
                      ProfileData(
                        imagePath: AppAssets.person3,
                        backgroundColor: AppColors.white,
                      ),
                      ProfileData(
                        imagePath: AppAssets.person4,
                        backgroundColor: AppColors.white,
                      ),
                    ],
                  ),
                  //Elevated Button
                  Padding(
                    padding: const EdgeInsets.only(
                      right: 40,
                      left: 70,
                      top: 30,
                    ),
                    child: SizedBox(
                      height: 50,
                      width: 180,
                      child: CustomElevatedButton(
                        onPressed: () {},
                        isOutlined: false,
                        text: 'Create Split',
                        backgroundColor: AppColors.warning.withOpacity(0.8),
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
