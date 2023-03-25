import 'package:flutter/material.dart';

class AppColor{
  static Color backGroundColor = const Color(0xffFBFBFD);
  static Color appColor = const Color(0xffF67952);
}


Widget notificationLabel(){
  return Container(
    height: 12,width: 12,
    decoration: BoxDecoration(
    shape: BoxShape.circle,
    color: AppColor.appColor
  ),);
}