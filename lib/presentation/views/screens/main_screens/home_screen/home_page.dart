import 'package:flutter/material.dart';
import 'package:project_core/presentation/views/screens/main_screens/add_expenses/add_bill.dart';
import 'package:project_core/presentation/views/screens/main_screens/home_screen/widgets/all_expanses.dart';
import 'package:project_core/presentation/views/screens/main_screens/home_screen/widgets/all_transactions.dart';
import 'package:project_core/presentation/views/screens/main_screens/home_screen/widgets/home_header.dart';
import 'package:project_core/presentation/views/screens/main_screens/home_screen/widgets/recent_bills.dart';
import 'package:project_core/presentation/views/screens/main_screens/home_screen/widgets/recent_splinters.dart';
import 'package:project_core/shared/shared.dart';

class HomePage extends StatelessWidget {
  static const String routeName = "HomePage";
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.dark,
      body: SafeArea(
        child: SingleChildScrollView(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 4),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                //Greetings with icon
                HomeGreeting(profileImage: AppAssets.person3),
                //Divider
                Padding(
                  padding: const EdgeInsets.only(left: 5, right: 5),
                  child: Divider(color: AppColors.darkGrey),
                ),
                ////Recnt bills and add bills roww
                TitleWithOptionalButton(
                  title: "Recent Bills",
                  buttonColor: AppColors.darkerGrey,
                  onTap: () {
                    //navigation to add bill screen
                    Navigation.pushNamed(AddBill.routeName);
                  },
                ),

                ///All expanses
                AllExpanses(),

                /// recent Splinters
                TitleWithOptionalButton(
                  title: "Recent Splinters",
                  showButton: false,
                  showIcon: false,
                  buttonText: "View All",
                ),

                ///Splinters profile
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

                /// All transactions
                TitleWithOptionalButton(
                  title: "All Transactions",
                  showButton: false,
                  showIcon: false,
                  buttonText: "View All",
                ),
                // all transactyions
                AllTransactions(
                  iconData: Icons.movie_creation_outlined,
                  // titleIcon: Icons.movie,
                  title: 'Odeon Cinema',
                  date: 'Jun 07',
                  time: '01:30 PM',
                  price: '£15.99',
                  iconColor: AppColors.darkerGrey,
                  onTap: () {},
                ),
                AllTransactions(
                  iconData: Icons.wifi,
                  // titleIcon: Icons.movie,
                  title: 'Wifi Bill',
                  date: 'Jun 07',
                  time: '01:30 PM',
                  price: '£15.99',
                  iconColor: AppColors.darkerGrey,
                  onTap: () {},
                ),
                AllTransactions(
                  iconData: Icons.beach_access,
                  title: 'Isle of Weight Trip',
                  date: 'Jun 07',
                  time: '01:30 PM',
                  price: '£15.99',
                  iconColor: AppColors.darkerGrey,
                  onTap: () {},
                ),
                AllTransactions(
                  iconData: Icons.home,
                  // titleIcon: Icons.movie,
                  title: 'House Rent',
                  date: 'Jun 07',
                  time: '01:30 PM',
                  price: '£15.99',
                  iconColor: AppColors.darkerGrey,
                  onTap: () {},
                ),
              ],
            ),
          ),
        ),
      ),
    );
  }
}
