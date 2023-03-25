import 'package:fashion_u/constant/app_assets.dart';
import 'package:fashion_u/constant/app_icon.dart';
import 'package:fashion_u/utils/extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class DrawerListTile extends StatelessWidget {
  Widget icon;
  String text;
  VoidCallback onTap;
  DrawerListTile({Key? key,required this.text,required this.icon,required this.onTap}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: 10),
        // color: Colors.black,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Stack(
              alignment: Alignment.center,
              children: [
                Image.asset(AppAssets.iconBackGround,height: 40,width: 40,),
                icon,
              ],
            ),
            10.0.addWSpace(),
            Text(text,style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w500),)
          ],
        ),
      ).marginSymmetric(horizontal: 10),
    );
  }
}
