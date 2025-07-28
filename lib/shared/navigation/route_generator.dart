import 'package:go_router/go_router.dart';
import 'package:project_core/presentation/views/screens/add_expenses/who_paid_screen.dart';
import 'package:project_core/presentation/views/screens/add_expenses/adjust_split_screen.dart';
import 'package:project_core/presentation/views/screens/add_expenses/with_you_and/add_members.dart';
import 'package:project_core/presentation/views/screens/add_expenses/with_you_and/add_new_group.dart';
import 'package:project_core/presentation/views/screens/add_expenses/with_you_and/confirm_group.dart';
import 'package:project_core/presentation/views/screens/add_expenses/with_you_and/with_you_and.dart';
import 'package:project_core/presentation/views/screens/friends_group/friends_group.dart';
import 'package:project_core/presentation/views/screens/add_expenses/add_bill_screen.dart';
import 'package:project_core/presentation/views/screens/insight_screen/insight_screen.dart';
import 'package:project_core/presentation/views/screens/onboarding_screens/login_screen.dart';
import 'package:project_core/presentation/views/screens/notifications/notifications.dart';
import 'package:project_core/presentation/views/screens/profile/settings/edit_profile.dart';
import 'package:project_core/presentation/views/screens/profile/user_profile_screen.dart';
import 'package:project_core/presentation/views/screens/onboarding_screens/sign_up.dart';
import 'package:project_core/presentation/views/screens/onboarding_screens/welcome_screen.dart';
import '../../main.dart';
import '../../presentation/views/dummy_screen.dart';
import '../../presentation/views/screens/main_screens/main_screen.dart';
import '../shared.dart';

final router = GoRouter(
  //  initialLocation: '/${MainScreen.routeName}',
  initialLocation: '/',
  navigatorKey: navigatorKey,
  routes: [
    GoRoute(
      name: TopScreen.routeName,
      path: '/',
      builder: (context, state) => const TopScreen(),
    ),
    GoRoute(
      name: DummyScreen.routeName,
      path: '/${DummyScreen.routeName}',
      builder: (context, state) => const DummyScreen(),
    ),
    // GoRoute(
    //   name: MainScreen.routeName,
    //   path: '/${MainScreen.routeName}',
    //   builder: (context, state) => const MainScreen(),
    // ),

    /// ADDED SCREEN FOR SPLIT APP
    GoRoute(
      name: WelcomeScreen.routeName,
      path: '/${WelcomeScreen.routeName}',
      builder: (context, state) => const WelcomeScreen(),
    ),
    GoRoute(
      name: LoginScreen.routeName,
      path: '/${LoginScreen.routeName}',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      name: MainScreen.routeName,
      path: '/${MainScreen.routeName}',
      builder: (context, state) => const MainScreen(),
    ),
    GoRoute(
      name: AddBill.routeName,
      path: '/${AddBill.routeName}',
      builder: (context, state) => const AddBill(),
    ),
    GoRoute(
      name: FriendsAndGroup.routeName,
      path: '/${FriendsAndGroup.routeName}',
      builder: (context, state) => const FriendsAndGroup(),
    ),
    GoRoute(
      name: Notifications.routeName,
      path: '/${Notifications.routeName}',
      builder: (context, state) => const Notifications(),
    ),
    GoRoute(
      name: UserProfile.routeName,
      path: '/${UserProfile.routeName}',
      builder: (context, state) => const UserProfile(),
    ),
    GoRoute(
      name: SignUpScreen.routeName,
      path: '/${SignUpScreen.routeName}',
      builder: (context, state) => const SignUpScreen(),
    ),
    GoRoute(
      name: EditProfile.routeName,
      path: '/${EditProfile.routeName}',
      builder: (context, state) => const EditProfile(),
    ),
    GoRoute(
      name: InsightScreen.routeName,
      path: '/${InsightScreen.routeName}',
      builder: (context, state) => const InsightScreen(),
    ),
    GoRoute(
      name: WhoPaid.routeName,
      path: '/${WhoPaid.routeName}',
      builder: (context, state) => const WhoPaid(),
    ),
    GoRoute(
      name: AdjustSplit.routeName,
      path: '/${AdjustSplit.routeName}',
      builder: (context, state) => const AdjustSplit(),
    ),
    GoRoute(
      name: WithYouAnd.routeName,
      path: '/${WithYouAnd.routeName}',
      builder: (context, state) => const WithYouAnd(),
    ),
    GoRoute(
      name: AddNewGroup.routeName,
      path: '/${AddNewGroup.routeName}',
      builder: (context, state) => const AddNewGroup(),
    ),
    GoRoute(
      name: ConfirmGroup.routeName,
      path: '/${ConfirmGroup.routeName}',
      builder: (context, state) => const ConfirmGroup(),
    ),
    GoRoute(
      name: AddMembers.routeName,
      path: '/${AddMembers.routeName}',
      builder: (context, state) => const AddMembers(),
    ),
  ],
);

// class RouteGenerator {
//   static Route generateRoute(RouteSettings settings) => switch (settings.name) {
//         MyScreen.routeName => route(MyScreen()),
//         DummyLessScreen.routeName => route(const DummyLessScreen()),
//         DummyScreen.routeName =>
//           route(DummyScreen(params: settings.arguments as DummyScreenArgs?)),
//         _ => route(const ErrorRoute()),
//       };
// }

// Route route(Widget screen) => MaterialPageRoute(builder: (context) => screen);

// class ErrorRoute extends StatelessWidget {
//   const ErrorRoute({super.key});

//   @override
//   Widget build(BuildContext context) =>
//       const Scaffold(body: Center(child: Text('You should not be here...')));
// }
