import 'package:app_marcaqui/screens/arts_screen.dart';
import 'package:app_marcaqui/screens/chat_screen.dart';
import 'package:app_marcaqui/screens/main_screen.dart';
import 'package:app_marcaqui/screens/mark_screen.dart';
import 'package:app_marcaqui/screens/recoverPassword_screen.dart';
import 'package:app_marcaqui/screens/register_screen.dart';
import 'package:app_marcaqui/screens/socialMedia_screen.dart';
import 'package:app_marcaqui/screens/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flex_color_scheme/flex_color_scheme.dart';
import 'package:go_router/go_router.dart';

import 'screens/login_screen.dart';

final router = GoRouter(
  routes: [
    GoRoute(
        path: '/',
        builder: (context, state) {
          var splashObj = const SplashScreen();

          return splashObj;
        }),
    GoRoute(
      path: '/registerscreen',
      builder: (context, state) => const RegisterScreen(),
    ),
    GoRoute(
      path: '/mainscreen',
      builder: (context, state) => const MainScreen(),
    ),
    GoRoute(
        path: '/recoverscreen',
        builder: (context, state) => const RecoverScreen()),
    GoRoute(
      path: '/loginscreen',
      builder: (context, state) => const LoginScreen(),
    ),
    GoRoute(
      path: '/markscreen',
      builder: (context, state) => const MarkScreen(),
    ),
    GoRoute(
      path: '/artsscreen',
      builder: (context, state) => const ArtsScreen(),
    ),
    GoRoute(
      path: '/socialmediascreen',
      builder: (context, state) => const SocialMediaScreen(),
    ),
    GoRoute(
      path: '/chatscreen',
      builder: (context, state) => ChatScreen(),
    )
  ],
  initialLocation: '/',
);

void main() {
  var myAppObj = const MyApp();
  runApp(myAppObj);
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp.router(
      routerConfig: router,
      title: 'MarcAqui',
      theme: FlexThemeData.light(
        colors: const FlexSchemeColor(
          primary: Color(0xffec3323),
          primaryContainer: Color(0xffd9d9d9),
          secondary: Color(0xffe4c689),
          secondaryContainer: Color(0xff000000),
          tertiary: Color(0xff000000),
          tertiaryContainer: Color(0xff505050),
          appBarColor: Color(0xff000000),
          error: Color(0xffb00020),
        ),
        surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
        blendLevel: 7,
        subThemesData: const FlexSubThemesData(
          blendOnLevel: 10,
          blendOnColors: false,
          useTextTheme: true,
          useM2StyleDividerInM3: true,
          alignedDropdown: true,
          useInputDecoratorThemeInDialogs: true,
        ),
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
        useMaterial3: true,
        swapLegacyOnMaterial3: true,
      ),
      darkTheme: FlexThemeData.dark(
        colors: const FlexSchemeColor(
          primary: Color(0xffec3323),
          primaryContainer: Color(0xffd9d9d9),
          secondary: Color(0xffe4c689),
          secondaryContainer: Color(0xff000000),
          tertiary: Color(0xff000000),
          tertiaryContainer: Color(0xff292929),
          appBarColor: Color(0xff000000),
          error: Color(0xffcf6679),
        ),
        surfaceMode: FlexSurfaceMode.levelSurfacesLowScaffold,
        blendLevel: 13,
        subThemesData: const FlexSubThemesData(
          blendOnLevel: 20,
          useTextTheme: true,
          useM2StyleDividerInM3: true,
          alignedDropdown: true,
          useInputDecoratorThemeInDialogs: true,
        ),
        visualDensity: FlexColorScheme.comfortablePlatformDensity,
        useMaterial3: true,
        swapLegacyOnMaterial3: true,
        // To use the Playground font, add GoogleFonts package and uncomment
        // fontFamily: GoogleFonts.notoSans().fontFamily,
      ),
      themeMode: ThemeMode.system,
    );
  }
}
