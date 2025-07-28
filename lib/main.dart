import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:loader_overlay/loader_overlay.dart';
import 'package:project_core/presentation/views/screens/onboarding_screens/welcome_screen.dart';
import 'package:project_core/shared/shared.dart';
import 'package:flutter_localizations/flutter_localizations.dart';
import 'di/di.dart';
import 'providers/splash_provider.dart';
import 'providers/localization_provider.dart';
import 'providers/theme_provider.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await AppLocal.ins.initStorage();
  await DI.initDI();
  runApp(
    const ProviderScope(
      // to view the date and time area
      child: AnnotatedRegion<SystemUiOverlayStyle>(
        value: SystemUiOverlayStyle.light,
        child: MyApp(),
      ),
    ),
  );
}

class MyApp extends ConsumerWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return GlobalLoaderOverlay(
      duration: Durations.medium4,
      reverseDuration: Durations.medium4,
      overlayColor: Colors.grey.withValues(alpha: 0.8),
      overlayWidgetBuilder: (_) {
        return const Center(child: CircularProgressIndicator());
      },
      child: MaterialApp.router(
        title: 'Flutter Demo',
        themeMode: ref.watch(themeProvider),
        theme: lightTheme,
        darkTheme: darkTheme,
        supportedLocales: AppLocalization.supportedLocales,
        locale: ref.watch(localizationProvider).locale,
        localizationsDelegates: [
          AppLocalization.delegate,
          GlobalMaterialLocalizations.delegate,
          GlobalWidgetsLocalizations.delegate,
          GlobalCupertinoLocalizations.delegate,
        ],
        routerConfig: router,
        //debug mode false
        debugShowCheckedModeBanner: false,
      ),
    );
  }
}

class TopScreen extends ConsumerWidget {
  static const String routeName = "top_screen";
  const TopScreen({super.key});

  @override
  Widget build(BuildContext context, WidgetRef ref) {
    return ref
        .watch(splashProvider)
        .when(
          data: (value) => value == UserState.home
              ?
                // const SignInScreen() : const SplashScreen(),
                //   const DummyScreen()
                // : const DummyScreen(),
                const WelcomeScreen()
              : const WelcomeScreen(),
          error: (_, __) => const SplashScreen(),
          loading: () => const SplashScreen(),
        );
  }
}

class SplashScreen extends StatelessWidget {
  const SplashScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF2D2D2D),
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.asset("assets/images/AppLogo.png", height: 80, width: 80),
            20.spaceY,
            Text(
              "Money",
              style: TextStyle(fontSize: 25, color: AppColors.white),
            ),
            Text(
              "SplitWise",
              style: TextStyle(fontSize: 20, color: AppColors.secondary),
            ),
            20.spaceY,
            // CircularProgressIndicator(color: AppColors.baseGreenColor),
          ],
        ),
      ),
    );
  }
}
