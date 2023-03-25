import 'package:fashion_u/screens/home_pages/home_screen.dart';
import 'package:fashion_u/screens/landing_pages/landing_screen.dart';
import 'package:fashion_u/screens/my_wallet_pages/my_wallet_screen.dart';
import 'package:fashion_u/screens/splash_pages/splash_screen.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

void main() {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations([
    DeviceOrientation.portraitUp,
    DeviceOrientation.portraitDown
  ]);
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      // title: 'Flutter Demo',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        primarySwatch: Colors.orange,
      ),
      home:  const SplashScreen(),
    );
  }
}




