import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:project_core/presentation/views/screens/friends_group/friends_group.dart';
import 'package:project_core/presentation/views/screens/home_screen/home_page.dart';
import 'package:project_core/presentation/views/screens/insight_screen/insight_screen.dart';
import 'package:project_core/presentation/views/screens/profile/user_profile_screen.dart';
import 'package:project_core/presentation/widgets/custom_bottom_navigation.dart';

import '../../../../providers/main_provider.dart';
import '../../../../shared/shared.dart';

class MainScreen extends ConsumerStatefulWidget {
  static const String routeName = "main_screen";

  const MainScreen({super.key});

  @override
  ConsumerState<MainScreen> createState() => _MainScreenState();
}

class _MainScreenState extends ConsumerState<MainScreen> {
  List<Widget> screens = [
    HomePage(),
    FriendsAndGroup(),
    InsightScreen(),
    UserProfile(),
  ];

  @override
  void initState() {
    onWidgetDidBuild(() {
      ref.read(mainProvider.notifier).changeTab(0);
    });
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: screens.elementAt(ref.watch(mainProvider).currentIndex!),
      bottomNavigationBar: CustomBottomNavigation(
        onTap: (index) => ref.read(mainProvider.notifier).changeTab(index),
        currentIndex: ref.watch(mainProvider).currentIndex!,
      ),
    );
  }
}
