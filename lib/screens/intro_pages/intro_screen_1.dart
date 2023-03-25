
import 'package:flutter/material.dart';

import '../../constant/app_assets.dart';
import '../../constant/app_color.dart';

class IntroScreen1 extends StatelessWidget {
  const IntroScreen1({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    final height = MediaQuery.of(context).size.height;

    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Image.asset(AppAssets.intro1Image,height:  height / 2,),
        const Text("Choose Product",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 18),),
        SizedBox(height: height / 30,),
        const Text("A product is the item offered for sale.",style: TextStyle(color: Color(0xff7E7E7F),fontWeight: FontWeight.w400,fontSize: 15),),
        const Text("A product can be a service or an item. It can be",style: TextStyle(color: Color(0xff7E7E7F),fontWeight: FontWeight.w400,fontSize: 15),),
        const Text("physical or in virtual or cyber form",style: TextStyle(color: Color(0xff7E7E7F),fontWeight: FontWeight.w400,fontSize: 15),),
      ],
    );
  }
}
