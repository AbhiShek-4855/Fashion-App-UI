
import 'package:flutter/material.dart';

import '../../constant/app_assets.dart';

class IntroScreen2 extends StatelessWidget {
  const IntroScreen2({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(AppAssets.intro2Image,height:  height / 2,),
        const Text("Make Payment",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 18),),
        SizedBox(height: height / 30,),
        const Text("Payment is the transfer of money",style: TextStyle(color: Color(0xff7E7E7F),fontWeight: FontWeight.w400,fontSize: 15),),
        const Text("services in exchange product or Payments",style: TextStyle(color: Color(0xff7E7E7F),fontWeight: FontWeight.w400,fontSize: 15),),
        const Text("typically made terms agreed",style: TextStyle(color: Color(0xff7E7E7F),fontWeight: FontWeight.w400,fontSize: 15),),
      ],
    );
  }
}