import 'package:fashion_u/constant/app_icon.dart';
import 'package:fashion_u/utils/extension.dart';
import 'package:fashion_u/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant/app_color.dart';
import '../home_pages/home_screen.dart';

class CongratulationScreen extends StatelessWidget {
  const CongratulationScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
      body: Center(
        child: SingleChildScrollView(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(child: Stack(
                alignment: Alignment.center,
                  children: [
                    AppIcon.congratulationBorderIcon(),
                    AppIcon.conGratulationCheckIcon(),

                  ])),
              Container(
                  height :  height / 10,
              ),
              const Text("Congratulation!!!",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 24),),
              10.0.addHSpace(),
              const Text("Payment is the transfer of money",style: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.5),fontWeight: FontWeight.w400,fontSize: 16),),
              const Text("services in exchange product or Payments",style: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.5),fontWeight: FontWeight.w400,fontSize: 16),),

              Container(
                height :  height / 10,
              ),
              AppButton(text: "Get your receipt", onTap: (){}),

              20.0.addHSpace(),
                GestureDetector(
                    onTap: (){
                      Get.offAll(HomeScreen());
                    },
                      child: Container(
                      // margin: EdgeInsets.symmetric(horizontal: 70),
                        height: 59,
                        width: 205,
                        decoration: BoxDecoration(
                          color: const Color(0xffFFE9E2),
                         borderRadius: BorderRadius.circular(30)
                          ),
                           child: Center(
                            child: Text("Back to Home",style: TextStyle(color: AppColor.appColor,fontWeight: FontWeight.w500,fontSize: 17)),
                         ),
                    ),
                )
            ],
          ),
        ),
      ),
    );
  }
}
