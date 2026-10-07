import 'package:firebase_core/firebase_core.dart';
import 'package:flutter/material.dart';
import 'package:mocha_vista/application/features/splash/splash_view.dart';
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
      theme: ThemeData(
        scaffoldBackgroundColor: Color.fromARGB(255, 31, 26, 26),
    

        colorScheme: .fromSeed(seedColor: Colors.deepPurple),
      ),
      initialRoute: '/',

      routes:{
        '/':(context) => SplashPage()
      }
    );
  }
}

