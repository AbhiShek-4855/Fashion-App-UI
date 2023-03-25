import 'package:fashion_u/constant/app_assets.dart';
import 'package:fashion_u/utils/extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SettingListTile extends StatelessWidget {
  Widget leadingIcon;
  Widget suffixIcon;
  String text;
  VoidCallback onTap;
  SettingListTile({Key? key,required this.leadingIcon,required this.suffixIcon,required this.text,required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 5),
      child: Row(
        children: [
          Stack(
              alignment: Alignment.center,
              children: [
            Image.asset(AppAssets.iconBackGround),
                leadingIcon,
          ]),
          5.0.addWSpace(),
           Text(text,style: const TextStyle(fontSize: 14,fontWeight: FontWeight.w400),),
          const Spacer(),
          suffixIcon
        ],
      ).marginSymmetric(horizontal: 10,vertical: 5),
    );
  }
}
