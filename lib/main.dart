import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mocha_vista/core/theme/presentation/app_theme/app_theme.dart';
import 'package:mocha_vista/features/auth/presentation/view/sign_in.dart';
import 'package:mocha_vista/features/auth/presentation/view/sign_up.dart';
import 'package:mocha_vista/features/home/presentation/view/home_view.dart';
import 'package:mocha_vista/features/splash/presentation/view/splash_view.dart';
import 'package:mocha_vista/firebase_options.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await Firebase.initializeApp(options: DefaultFirebaseOptions.currentPlatform);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Flutter Demo',
      theme: AppTheme.lightTheme,
      darkTheme: AppTheme.darkTheme,
      // themeMode: switch (state.theme) {
      //       AppTheme.light => ThemeMode.light,
      //       AppTheme.dark => ThemeMode.dark,
      //       AppTheme.system => ThemeMode.system,
      //     },
      initialRoute: '/',
      routes: {
        '/': (context) => SplashPageWrapper(),
        '/signIn': (context) => SignInPage(),
        '/home': (context) => HomePage(),
        '/signUp':(context) => SignUp(),
      },
    );
  }
}
