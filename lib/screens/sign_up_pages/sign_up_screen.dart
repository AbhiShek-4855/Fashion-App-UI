import 'package:fashion_u/constant/app_color.dart';
import 'package:fashion_u/screens/home_pages/home_screen.dart';
import 'package:fashion_u/screens/login_pages/login_screen.dart';
import 'package:fashion_u/screens/sign_up_pages/signUpController.dart';
import 'package:fashion_u/utils/extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant/app_assets.dart';
import '../../constant/app_icon.dart';
import '../../widgets/app_button.dart';
import '../../widgets/app_text_field.dart';
import '../landing_pages/landing_screen.dart';

class SignUpScreen extends StatelessWidget {
  const SignUpScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    final signUpController = Get.put(SignUpScreenController());
    return GestureDetector(
      onTap: (){
        hideKeyboard(context);
      },
      child: Scaffold(
        backgroundColor: AppColor.backGroundColor,
        body: SingleChildScrollView(
          child: Column(
            children: [
              SizedBox(
                height: height / 9,
              ),
              // Center(child: Image.asset(AppAssets.appIcon)),
              SizedBox(
                height: height/7,
              ),
              const Text("Sign Up", style: TextStyle(color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 22),),
              SizedBox(
                height: height / 10,
              ),
              AppTextField(
                hintText: "Name",
                icon: Image.asset(AppAssets.signUpPersonIcon),
              ),
              20.0.addHSpace(),
              AppTextField(
                hintText: "Email",
                icon: Image.asset(AppAssets.emailIcon),
              ),
              20.0.addHSpace(),
              AppTextField(
                hintText: "Password",
                icon: Image.asset(AppAssets.passWordIcon),
              ),
              5.0.addHSpace(),
              Row(
                children: [
                  Obx(() {
                    return Checkbox(
                      fillColor: MaterialStateProperty.all(AppColor.appColor),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(5)),
                        value: signUpController.term.value,
                        onChanged: signUpController.onTermChange);
                  }),
                  5.0.addWSpace(),
                 const Text("I accept all the ",style: TextStyle(color: Color(0xff79807B)),),
                 const Text("Terms & Conditions",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),),
                ]
              ),


              20.0.addHSpace(),

              AppButton(
                text: "Sign up",
                onTap: () {
                  Get.to(HomeScreen(),transition: Transition.rightToLeft);
                },
              ),

              30.0.addHSpace(),


              Row(
                children: [
                  Expanded(
                    child: const Divider(
                      color: Color(0xff79807B),
                      thickness: 0.5,
                    ).marginOnly(left: 50, right: 10),
                  ),
                  const Text("Or", style: TextStyle(color: Color(0xff79807B)),),
                  Expanded(
                    child: const Divider(
                      color: Color(0xff79807B),
                      thickness: 0.5,
                    ).marginOnly(left: 10, right: 50),
                  ),
                ],
              ),

              10.0.addHSpace(),


              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  loginCircle(onTap: () {}, icon: AppIcon.facebookIcon()),
                  loginCircle(onTap: () {}, icon: AppIcon.googleIcon()),
                ],
              ),

              20.0.addHSpace(),
              GestureDetector(
                onTap: (){
                  Get.offAll(const LoginScreen(),transition: Transition.rightToLeft);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    const Text("Already have an account?",
                      style: TextStyle(color: Color(0xff8F8382)),),
                    5.0.addWSpace(),
                    const Text("Log In", style: TextStyle(
                        color: Colors.black, fontWeight: FontWeight.w500),),
                  ],
                ),
              ),

              20.0.addHSpace(),

            ],
          ),
        ),
      ),
    );
  }

  Widget loginCircle({required Widget icon, required VoidCallback onTap}) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        height: 59,
        width: 54,
        decoration: const BoxDecoration(
            color: Colors.white,
            shape: BoxShape.circle,
            boxShadow: [ BoxShadow(
              color: Color(0xffF3F3F5),
              blurRadius: 14.0,
            ),
            ]
        ),
        child: icon.marginAll(15),
      ),
    );
  }

}
