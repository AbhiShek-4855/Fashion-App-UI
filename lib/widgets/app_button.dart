import 'package:flutter/material.dart';

import '../constant/app_color.dart';

class AppButton extends StatelessWidget {
  String text;
  VoidCallback onTap;
  AppButton({Key? key,required this.text,required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Container(
        // margin: EdgeInsets.symmetric(horizontal: 70),
        height: 59,
        width: 205,
        decoration: BoxDecoration(
          color: AppColor.appColor,
          borderRadius: BorderRadius.circular(30)
        ),
        child: Center(
          child: Text(text,style: TextStyle(color: Colors.white,fontWeight: FontWeight.w500,fontSize: 17)),
        ),
      ),
    );
  }
}
