import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:project_core/presentation/base_widgets/keyboard_aware.dart';
import 'package:project_core/presentation/views/screens/main_screens/add_expenses/widgets/bottom_sheet.dart';
import 'package:project_core/presentation/views/screens/main_screens/add_expenses/widgets/group_container.dart';
import 'package:project_core/presentation/views/screens/main_screens/add_expenses/widgets/splits_views/equally_split.dart';
import 'package:project_core/presentation/views/screens/main_screens/login_screen/widgets/social_buttons.dart';
import 'package:project_core/shared/constants/app_colors.dart';
import 'package:project_core/shared/extensions/sized_box.dart';

class AdjustSplit extends ConsumerWidget {
  static const String routeName = "Adjustsplit";
  const AdjustSplit({super.key});

  Widget buildSplitContent(String selected) {
    switch (selected) {
      case 'Equally':
        return SplitEqually();
      case 'Unequally':
      // return Column(
      //   children: [
      //     GroupContainer(
      //       groupName: "Saad Khan",
      //       description: "200",
      //       imageSize: 50,
      //       groupImage: Icon(Icons.person, color: Colors.white, size: 30),
      //       trailing: SizedBox(
      //         width: 140,
      //         child: Row(
      //           children: [
      //             const Icon(
      //               Icons.scale_outlined,
      //               color: Colors.grey,
      //               size: 22,
      //             ),
      //             const SizedBox(width: 8),
      //             Expanded(
      //               child: TextField(
      //                 style: const TextStyle(
      //                   color: Colors.white,
      //                   fontSize: 14,
      //                 ),
      //                 decoration: InputDecoration(
      //                   hintText: "\$",
      //                   hintStyle: TextStyle(
      //                     color: Colors.grey[400],
      //                     fontSize: 13,
      //                   ),
      //                   contentPadding: const EdgeInsets.symmetric(
      //                     horizontal: 8,
      //                     vertical: 8,
      //                   ),
      //                   filled: true,
      //                   fillColor: Colors.grey[800],
      //                   border: OutlineInputBorder(
      //                     borderRadius: BorderRadius.circular(8),
      //                     borderSide: BorderSide.none,
      //                   ),
      //                 ),
      //                 keyboardType: TextInputType.number,
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //     ),
      //     10.spaceY,
      //     GroupContainer(
      //       groupName: "Saad Khan",
      //       description: "200",
      //       imageSize: 50,
      //       groupImage: Icon(Icons.person, color: Colors.white, size: 30),
      //       trailing: SizedBox(
      //         width: 140,
      //         child: Row(
      //           children: [
      //             const Icon(
      //               Icons.scale_outlined,
      //               color: Colors.grey,
      //               size: 22,
      //             ),
      //             const SizedBox(width: 8),
      //             Expanded(
      //               child: TextField(
      //                 style: const TextStyle(
      //                   color: Colors.white,
      //                   fontSize: 14,
      //                 ),
      //                 decoration: InputDecoration(
      //                   hintText: "\$",
      //                   hintStyle: TextStyle(
      //                     color: Colors.grey[400],
      //                     fontSize: 13,
      //                   ),
      //                   contentPadding: const EdgeInsets.symmetric(
      //                     horizontal: 8,
      //                     vertical: 8,
      //                   ),
      //                   filled: true,
      //                   fillColor: Colors.grey[800],
      //                   border: OutlineInputBorder(
      //                     borderRadius: BorderRadius.circular(8),
      //                     borderSide: BorderSide.none,
      //                   ),
      //                 ),
      //                 keyboardType: TextInputType.number,
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //     ),
      //     10.spaceY,
      //     GroupContainer(
      //       groupName: "Saad Khan",
      //       description: "200",
      //       imageSize: 50,
      //       groupImage: Icon(Icons.person, color: Colors.white, size: 30),
      //       trailing: SizedBox(
      //         width: 140,
      //         child: Row(
      //           children: [
      //             const Icon(
      //               Icons.scale_outlined,
      //               color: Colors.grey,
      //               size: 22,
      //             ),
      //             const SizedBox(width: 8),
      //             Expanded(
      //               child: TextField(
      //                 style: const TextStyle(
      //                   color: Colors.white,
      //                   fontSize: 14,
      //                 ),
      //                 decoration: InputDecoration(
      //                   hintText: "\$",
      //                   hintStyle: TextStyle(
      //                     color: Colors.grey[400],
      //                     fontSize: 13,
      //                   ),
      //                   contentPadding: const EdgeInsets.symmetric(
      //                     horizontal: 8,
      //                     vertical: 8,
      //                   ),
      //                   filled: true,
      //                   fillColor: Colors.grey[800],
      //                   border: OutlineInputBorder(
      //                     borderRadius: BorderRadius.circular(8),
      //                     borderSide: BorderSide.none,
      //                   ),
      //                 ),
      //                 keyboardType: TextInputType.number,
      //               ),
      //             ),
      //           ],
      //         ),
      //       ),
      //     ),
      //     200.spaceY,
      //     Divider(color: Colors.white),
      //     Center(
      //       child: Column(
      //         children: [
      //           Text(
      //             "\$0.00 of \$ 100",
      //             style: TextStyle(color: Colors.white, fontSize: 15),
      //           ),
      //           Text(
      //             "(\$100.00 left)",
      //             style: TextStyle(color: Colors.white),
      //           ),
      //         ],
      //       ),
      //     ),
      //   ],
      // );
      case "By Percentage":
        return Column(
          children: [
            GroupContainer(
              groupName: "Saad Khan",
              description: "200",
              imageSize: 50,
              groupImage: Icon(Icons.person, color: Colors.white, size: 30),
              trailing: SizedBox(
                width: 140,
                child: Row(
                  children: [
                    const Icon(Icons.percent, color: Colors.grey, size: 22),
                    const SizedBox(width: 8),
                    Expanded(
                      child: TextField(
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                        decoration: InputDecoration(
                          hintText: "\$",
                          hintStyle: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 13,
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 8,
                          ),
                          filled: true,
                          fillColor: Colors.grey[800],
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            10.spaceY,
            GroupContainer(
              groupName: "Saad Khan",
              description: "200",
              imageSize: 50,
              groupImage: Icon(Icons.person, color: Colors.white, size: 30),
              trailing: SizedBox(
                width: 140,
                child: Row(
                  children: [
                    const Icon(Icons.percent, color: Colors.grey, size: 22),
                    const SizedBox(width: 8),
                    Expanded(
                      child: TextField(
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                        decoration: InputDecoration(
                          hintText: "\$",
                          hintStyle: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 13,
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 8,
                          ),
                          filled: true,
                          fillColor: Colors.grey[800],
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            10.spaceY,
            GroupContainer(
              groupName: "Saad Khan",
              description: "200",
              imageSize: 50,
              groupImage: Icon(Icons.person, color: Colors.white, size: 30),
              trailing: SizedBox(
                width: 140,
                child: Row(
                  children: [
                    const Icon(Icons.percent, color: Colors.grey, size: 22),
                    const SizedBox(width: 8),
                    Expanded(
                      child: TextField(
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                        decoration: InputDecoration(
                          hintText: "\$",
                          hintStyle: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 13,
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 8,
                          ),
                          filled: true,
                          fillColor: Colors.grey[800],
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            200.spaceY,
            Divider(color: Colors.white),
            Center(
              child: Column(
                children: [
                  Text("0% of 100%", style: TextStyle(color: Colors.white)),
                  Text("(\$100 left)", style: TextStyle(color: Colors.white)),
                ],
              ),
            ),
          ],
        );
      case "By Shares":
        return Column(
          children: [
            GroupContainer(
              groupName: "Saad Khan",
              description: "200",
              imageSize: 50,
              groupImage: Icon(Icons.person, color: Colors.white, size: 30),
              trailing: SizedBox(
                width: 140,
                child: Row(
                  children: [
                    const Icon(Icons.pie_chart, color: Colors.grey, size: 22),
                    const SizedBox(width: 8),
                    Expanded(
                      child: TextField(
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                        decoration: InputDecoration(
                          hintText: "\$",
                          hintStyle: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 13,
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 8,
                          ),
                          filled: true,
                          fillColor: Colors.grey[800],
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            10.spaceY,
            GroupContainer(
              groupName: "Asad Khan",
              description: "300",
              imageSize: 50,
              groupImage: Icon(Icons.person, color: Colors.white, size: 30),
              trailing: SizedBox(
                width: 140,
                child: Row(
                  children: [
                    const Icon(Icons.pie_chart, color: Colors.grey, size: 22),
                    const SizedBox(width: 8),
                    Expanded(
                      child: TextField(
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                        decoration: InputDecoration(
                          hintText: "\$",
                          hintStyle: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 13,
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 8,
                          ),
                          filled: true,
                          fillColor: Colors.grey[800],
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ],
                ),
              ),
            ),
            290.spaceY,
            Divider(color: Colors.white),
            Center(
              child: Column(
                children: [
                  Text(
                    "10 total Shares",
                    style: TextStyle(color: Colors.white),
                  ),
                ],
              ),
            ),
          ],
        );
      case "By Adjustment":
        return Column(
          children: [
            GroupContainer(
              groupName: "Saad Khan",
              description: "200",
              imageSize: 50,
              groupImage: Icon(Icons.person, color: Colors.white, size: 30),
              trailing: SizedBox(
                width: 140,
                child: Row(
                  children: [
                    const Icon(Icons.tune, color: Colors.grey, size: 22),
                    const SizedBox(width: 8),
                    Expanded(
                      child: TextField(
                        style: const TextStyle(
                          color: Colors.white,
                          fontSize: 14,
                        ),
                        decoration: InputDecoration(
                          hintText: "\$",
                          hintStyle: TextStyle(
                            color: Colors.grey[400],
                            fontSize: 13,
                          ),
                          contentPadding: const EdgeInsets.symmetric(
                            horizontal: 8,
                            vertical: 8,
                          ),
                          filled: true,
                          fillColor: Colors.grey[800],
                          border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8),
                            borderSide: BorderSide.none,
                          ),
                        ),
                        keyboardType: TextInputType.number,
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        );
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
      backgroundColor: AppColors.dark,
      body: KeyboardAware(
        child: SafeArea(
          child: Padding(
            padding: const EdgeInsets.symmetric(
              horizontal: 18.0,
              vertical: 20.0,
            ),
            child: Column(
              children: [
                Text(
                  "Adjust Split",
                  style: TextStyle(
                    color: Colors.white,
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
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
                buildSplitContent(selected),
              ],
            ),
          ),
        ),
      ),
      bottomNavigationBar: Padding(
        padding: const EdgeInsets.only(bottom: 20, right: 15, left: 15),
        child: CustomElevatedButton(
          onPressed: () {},
          isOutlined: false,
          text: "Done",
        ),
      ),
    );
  }
}
