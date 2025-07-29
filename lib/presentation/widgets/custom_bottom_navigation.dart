import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';
import '../../shared/shared.dart';

class CustomBottomNavigation extends StatelessWidget {
  final Function(int) onTap;
  final int currentIndex;

  const CustomBottomNavigation({
    super.key,
    required this.onTap,
    required this.currentIndex,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: Platform.isIOS ? 99 : 90,
      padding: const EdgeInsets.only(top: 5),
      alignment: Alignment.center,
      color: AppColors.dark, 
      child: BottomNavigationBar(
        currentIndex: currentIndex,
        onTap: onTap,
        elevation: 0,
        backgroundColor: AppColors.dark, 
        showUnselectedLabels: true,
        type: BottomNavigationBarType.fixed,
        unselectedItemColor: AppColors.darkGrey, 
        selectedItemColor: Colors.amberAccent, 
        selectedLabelStyle: AppTextstyle.bodyTextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: Colors.amberAccent,
        ),
        unselectedLabelStyle: AppTextstyle.bodyTextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w500,
          color: AppColors.darkGrey,
        ),
        items: [
          bottomNavigationBarItem(AppAssets.home, 'Home', currentIndex == 0),
          bottomNavigationBarItem(
            AppAssets.users,
            'Friends',
            currentIndex == 1,
          ),
          bottomNavigationBarItem(
            AppAssets.insights,
            'Insights',
            currentIndex == 2,
          ),
          bottomNavigationBarItem(
            AppAssets.profile,
            'Profile',
            currentIndex == 3,
          ),
        ],
      ),
    );
  }

  BottomNavigationBarItem bottomNavigationBarItem(
    String asset,
    String label,
    bool isActive,
  ) {
    return BottomNavigationBarItem(
      icon: SvgPicture.asset(
        asset,
        height: 26,
        width: 26,
        colorFilter: ColorFilter.mode(
          isActive ? Colors.amberAccent : AppColors.darkGrey, 
          BlendMode.srcIn,
        ),
      ),
      label: getTranslated(label, appContext),
    );
  }
}
