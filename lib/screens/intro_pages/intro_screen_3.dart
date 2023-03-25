import 'package:flutter/material.dart';

import '../../constant/app_assets.dart';

class IntroScreen3 extends StatelessWidget {
  const IntroScreen3({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(AppAssets.intro3Image,height:  height / 2,),
        const Text("Get Your Order",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 18),),
        SizedBox(height: height / 30,),
        const Text("Business or commerce an order is a started",style: TextStyle(color: Color(0xff7E7E7F),fontWeight: FontWeight.w400,fontSize: 15),),
        const Text("intention either spoken to engage in a",style: TextStyle(color: Color(0xff7E7E7F),fontWeight: FontWeight.w400,fontSize: 15),),
        const Text("commercial transaction specific products",style: TextStyle(color: Color(0xff7E7E7F),fontWeight: FontWeight.w400,fontSize: 15),),
      ],
    );
  }
}