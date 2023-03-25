import 'package:fashion_u/constant/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../widgets/intro_button.dart';
import '../intro_pages/intro_screen_1.dart';
import '../intro_pages/intro_screen_2.dart';
import '../intro_pages/intro_screen_3.dart';
import '../login_pages/login_screen.dart';
import 'landing_screen_controller.dart';

class LandingScreen extends StatelessWidget {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final landingScreenController = Get.put(LandingScreenController());

    return Scaffold(

      body: Stack(
        children: [

          PageView(
            physics: const AlwaysScrollableScrollPhysics(
                parent: BouncingScrollPhysics()),
            onPageChanged: landingScreenController.onChange,
            controller: landingScreenController.pageController.value,
            children: const [
              IntroScreen1(),
              IntroScreen2(),
              IntroScreen3(),
            ],
          ),

          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Obx(() {
                return Text("${landingScreenController.currentIndex}/3",
                  style: TextStyle(color: Colors.black),);
              }),
              GestureDetector(
                  onTap: (){
                    Get.to(LoginScreen(),transition: Transition.rightToLeft);
                  },
                  child: const Text("Skip"))
            ],
          ).marginOnly(right: 20, left: 20, top: 50),

          Column(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Obx(() {
                return IntroButton(
                    onTap: () {
                      (landingScreenController.currentIndex == 3) ? Get.to(LoginScreen(),transition: Transition.rightToLeft) :   landingScreenController.pageController.value.nextPage(duration: const Duration(seconds: 1), curve: Curves.linear);
                    },
                    icon: (landingScreenController.currentIndex == 1) ? Image.asset(AppAssets.next1)  : (landingScreenController.currentIndex == 2) ? Image.asset(AppAssets.next2) : Image.asset(AppAssets.getStartedImage),
                );
              }).marginOnly(bottom: 20, left: 70, right: 70)
            ],
          )


        ],
      ),
    );
  }
}
