import 'package:flutter/material.dart';
import 'package:project_core/presentation/base_widgets/keyboard_aware.dart';
import 'package:project_core/presentation/views/screens/main_screens/add_expenses/who_paid.dart';
import 'package:project_core/presentation/views/screens/main_screens/add_expenses/widgets/adjust_split.dart';
import 'package:project_core/presentation/views/screens/main_screens/add_expenses/widgets/group_container.dart';
import 'package:project_core/presentation/views/screens/main_screens/add_expenses/widgets/price_and_description.dart';
import 'package:project_core/presentation/views/screens/main_screens/home_screen/widgets/recent_bills.dart';
import 'package:project_core/presentation/views/screens/main_screens/login_screen/widgets/social_buttons.dart';
import 'package:project_core/presentation/widgets/custom_title.dart';
import 'package:project_core/shared/shared.dart';

class AddBill extends StatefulWidget {
  static const String routeName = "Add_Bill";

  const AddBill({super.key});

  @override
  State<AddBill> createState() => _AddBillState();
}

class _AddBillState extends State<AddBill> {
  final TextEditingController _descController = TextEditingController();
  final TextEditingController _priceController = TextEditingController();

  @override
  void dispose() {
    _descController.dispose();
    _priceController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return KeyboardAware(
      child: Scaffold(
        backgroundColor: AppColors.dark,
        body: SafeArea(
          child: Column(
            children: [
              Expanded(
                child: SingleChildScrollView(
                  padding: const EdgeInsets.symmetric(
                    horizontal: 18.0,
                    vertical: 20.0,
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      CustomTitle(title: "Add Expenses"),
                      24.spaceY,
                      GroupContainer(
                        groupName: "Group Name",
                        groupImage: Icon(Icons.group, color: Colors.grey[300]),
                      ),
                      20.spaceY,
                      BorderedInputField(
                        hintText: "Description",
                        icon: Icons.menu_book_outlined,
                        controller: _descController,
                      ),
                      20.spaceY,
                      BorderedInputField(
                        hintText: "\$ 0.00",
                        icon: Icons.money,
                        controller: _priceController,
                      ),
                      20.spaceY,
                      TitleWithOptionalButton(
                        title: "Paid by",
                        showButton: true,
                        buttonText: "Change",
                        showIcon: false,
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        onTap: () {
                          Navigation.pushNamed(WhoPaid.routeName);
                        },
                      ),
                      GroupContainer(
                        groupName: "Name",
                        suffixText: "you",
                        groupImage: Icon(
                          Icons.person_2_sharp,
                          color: Colors.grey[300],
                        ),
                      ),
                      TitleWithOptionalButton(
                        padding: const EdgeInsets.symmetric(vertical: 8),
                        title: "Split",
                        showButton: true,
                        buttonText: "Change",
                        showIcon: false,
                        onTap: () {
                          Navigation.pushNamed(AdjustSplit.routeName);
                        },
                      ),
                      GroupContainer(
                        groupName: "Equally",
                        groupImage: Icon(
                          Icons.view_agenda_outlined,
                          color: AppColors.grey,
                        ),
                      ),
                    ],
                  ),
                ),
              ),

              // Bottom Buttons
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 18.0),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        Icon(
                          Icons.calendar_month_outlined,
                          color: Colors.white,
                        ),
                        SizedBox(width: 16),
                        Icon(Icons.camera_alt_outlined, color: Colors.white),
                        SizedBox(width: 16),
                        Icon(Icons.edit_calendar_outlined, color: Colors.white),
                      ],
                    ),
                    10.spaceY,
                  ],
                ),
              ),
            ],
          ),
        ),
        bottomNavigationBar: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15, vertical: 15),
          child: SizedBox(
            width: double.infinity,
            child: CustomElevatedButton(
              onPressed: () {},
              isOutlined: false,
              text: "Done",
            ),
          ),
        ),
      ),
    );
  }
}
