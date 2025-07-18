import 'package:go_router/go_router.dart';
import 'package:project_core/presentation/views/screens/main_screens/home_screen/add_bill.dart';
import 'package:project_core/presentation/views/screens/main_screens/login_screen/login_screen.dart';
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

    /// added screens for split app
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
