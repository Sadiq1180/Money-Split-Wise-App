import 'package:flutter/material.dart';
import 'package:project_core/presentation/views/screens/main_screens/friends_group/widgets/freinds.dart';
import 'package:project_core/shared/constants/app_assets.dart';
import 'package:project_core/shared/shared.dart';

class FriendsTab extends StatelessWidget {
  const FriendsTab({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          FriendsProfile(
            name: "John Smith",
            amount: 80,
            profileImage: AppAssets.person1,
          ),

          10.spaceY,
          FriendsProfile(
            name: "Sana",
            amount: 80,
            profileImage: AppAssets.person2,
          ),
          10.spaceY,
          FriendsProfile(
            name: "Khan",
            amount: 80,
            profileImage: AppAssets.person3,
          ),
          10.spaceY,
          FriendsProfile(
            name: "Ahmad",
            amount: 80,
            profileImage: AppAssets.person4,
          ),
          10.spaceY,
          FriendsProfile(
            name: "Khalid",
            amount: 80,
            profileImage: AppAssets.person1,
          ),
          10.spaceY,
          FriendsProfile(
            name: "Kaleem",
            amount: 80,
            profileImage: AppAssets.person2,
          ),
          10.spaceY,
          FriendsProfile(
            name: "Saad",
            amount: 80,
            profileImage: AppAssets.person3,
          ),
          10.spaceY,
          FriendsProfile(
            name: "kashif",
            amount: 80,
            profileImage: AppAssets.person4,
          ),
        ],
      ),
    );
  }
}
