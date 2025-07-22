import 'package:flutter/material.dart';
import 'package:project_core/presentation/base_widgets/keyboard_aware.dart';
import 'package:project_core/presentation/views/screens/main_screens/friends_group/widgets/friends_list_header.dart';
import 'package:project_core/presentation/views/screens/main_screens/friends_group/widgets/friends_tab.dart';
import 'package:project_core/presentation/views/screens/main_screens/friends_group/widgets/groups_tab.dart';
import 'package:project_core/shared/shared.dart';

class FriendsAndGroup extends StatefulWidget {
  static const String routeName = "Friends_and_group";
  const FriendsAndGroup({super.key});

  @override
  State<FriendsAndGroup> createState() => _FriendsAndGroupState();
}

class _FriendsAndGroupState extends State<FriendsAndGroup>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.dark,
      body: KeyboardAware(
        child: SafeArea(
          child: Column(
            children: [
              // Header
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 4),
                child: FriendsListHeader(),
              ),

              // Tab Bar
              Container(
                margin: const EdgeInsets.all(16),
                height: 50,
                decoration: BoxDecoration(
                  color: const Color(0xFF2C2C2C),
                  borderRadius: BorderRadius.circular(25),
                  border: Border.all(color: Colors.amber),
                ),
                child: TabBar(
                  //   indicatorColor: Colors.black,
                  dividerColor: Colors.transparent,
                  controller: _tabController,
                  indicator: BoxDecoration(
                    color: const Color(0xFFFFB347),
                    borderRadius: BorderRadius.circular(25),
                  ),
                  indicatorSize: TabBarIndicatorSize.tab,
                  labelColor: Colors.black,
                  unselectedLabelColor: Colors.amber,
                  labelStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w600,
                  ),
                  unselectedLabelStyle: const TextStyle(
                    fontSize: 16,
                    fontWeight: FontWeight.w400,
                  ),
                  tabs: const [
                    Tab(text: 'Groups'),
                    Tab(text: 'Friends'),
                  ],
                ),
              ),

              // Tab Content
              Expanded(
                child: TabBarView(
                  controller: _tabController,
                  children: const [GroupsTab(), FriendsTab()],
                ),
              ),

              ///bill split card
            ],
          ),
        ),
      ),
    );
  }
}
