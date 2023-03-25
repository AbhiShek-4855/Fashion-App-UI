import 'package:fashion_u/constant/app_assets.dart';
import 'package:fashion_u/screens/landing_pages/landing_screen.dart';
import 'package:fashion_u/screens/sign_up_pages/sign_up_screen.dart';
import 'package:fashion_u/utils/extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant/app_color.dart';
import '../../constant/app_icon.dart';
import '../../widgets/app_button.dart';
import '../../widgets/app_text_field.dart';
import '../home_pages/home_screen.dart';

class LoginScreen extends StatelessWidget {
  const LoginScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return GestureDetector(
      onTap: (){
        hideKeyboard(context);
      },
      child: Scaffold(
        backgroundColor: AppColor.backGroundColor,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              SizedBox(
                height: height/9,
              ),
              // Center(child: Image.asset(AppAssets.appIcon)),
              SizedBox(
                height: height/7,
              ),
              const Text("Log in",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 22),),

              SizedBox(
                height: height/10,
              ),
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
                mainAxisAlignment: MainAxisAlignment.end,
                children: const [
                   Text("Forget password?",style: TextStyle(color: Color(0xff230A06),fontSize: 12,fontWeight: FontWeight.w400),)
                ],
              ).marginOnly(right: 10),

              30.0.addHSpace(),
              AppButton(
                text: "Log in",
                onTap: (){
                  Get.to(HomeScreen(),transition: Transition.rightToLeft);
                },
              ),

              30.0.addHSpace(),

              Row(
                children: [
                  Expanded(
                    child: const Divider(
                      color: Colors.black,
                      thickness: 0.5,
                    ).marginOnly(left: 50,right: 10),
                  ),
                  const Text("Or",style: TextStyle(color: Colors.black),),
                  Expanded(
                    child: const Divider(
                      color: Colors.black,
                      thickness: 0.5,
                    ).marginOnly(left: 10,right: 50),
                  ),
                ],
              ),

              30.0.addHSpace(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                children: [
                  loginCircle(onTap: (){},icon: AppIcon.facebookIcon()),
                  loginCircle(onTap: (){},icon: AppIcon.googleIcon()),
                ],
              ),
              40.0.addHSpace(),
              GestureDetector(
                onTap: (){
                  Get.to(const SignUpScreen(),transition: Transition.rightToLeft);
                },
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children:  [
                    const Text("Dont't have account?",style: TextStyle(color: Color(0xff8F8382)),),
                    5.0.addWSpace(),
                    const Text("Sign Up",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500),),
                  ],
                ),
              )


            ],
          ),
        ),
      ),
    );
  }

  Widget loginCircle({required Widget icon,required VoidCallback  onTap}){
    return  GestureDetector(
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
            ),]
        ),
        child: icon.marginAll(15),
      ),
    );
  }

}
