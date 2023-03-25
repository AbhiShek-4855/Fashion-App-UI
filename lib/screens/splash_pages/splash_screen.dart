import 'dart:async';

import 'package:fashion_u/screens/landing_pages/landing_screen.dart';
import 'package:fashion_u/utils/extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {

  @override
  void initState() {
    super.initState();
    Timer(
      const Duration(seconds: 3),
          () {
        Get.to(const LandingScreen(), transition: Transition.rightToLeft);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            const Text("FashionU",style: TextStyle(color: Color(0xffF67952),fontSize: 32,fontWeight: FontWeight.w600),),

            5.0.addHSpace(),
            const Text("UI Kit",style: TextStyle(fontWeight: FontWeight.w600,fontSize: 24,color: Colors.black),),
            15.0.addHSpace(),
            const FlutterLogo(
              size: 76,
            )
          ],
        ),
      ),
    );
  }
}