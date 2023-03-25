import 'package:fashion_u/constant/app_assets.dart';
import 'package:fashion_u/constant/app_color.dart';
import 'package:fashion_u/utils/extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant/app_icon.dart';

class ProfileScreen extends StatelessWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
      body: SingleChildScrollView(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [

            Container(
              height: height / 3,
              // width: double.infinity,
              decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(AppAssets.profileBackGroundImage),fit: BoxFit.fitWidth)
              ),
              child: Column(
                children: [
                  SizedBox(height: height / 25),
                  Stack(
                    alignment: Alignment.centerRight,
                    children: [
                      IconButton(onPressed: (){}, icon: const Icon(Icons.more_vert),tooltip: "More",),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: const [
                           Center(child: Text("Profile",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 20),)),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: height / 20),
                  CircleAvatar(
                    radius: 50,
                    backgroundColor: Colors.black,
                    backgroundImage: AssetImage(AppAssets.nullPersonImage),
                  ),
                ],
              ),
            ),
            const Center(child:  Text("User Name",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500),)),
            5.0.addHSpace(),
            const Center(child:  Text("User Email",style: TextStyle(fontWeight: FontWeight.w400,fontSize: 16,color: Color(0xff7E7E7F)),)),

            20.0.addHSpace(),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Expanded(
                  child: userInterface(backColor: const Color(0xffFEF6F3),icon: AppIcon.bagIcon(),title: "Progress Order",subtitle: "10+"),
                ),
                Expanded(
                  child: userInterface(backColor: const Color(0xffFEF6F3),icon: AppIcon.promoCodeIcon(),title: "Promocodes",subtitle: "5"),
                ),
                Expanded(
                  child: userInterface(backColor: const Color(0xffFFFBEE),icon: AppIcon.starIcon(),title: "Reviews",subtitle: "4.5K"),
                ),
              ],
            ).marginSymmetric(horizontal: 10),

            30.0.addHSpace(),
            const Text("Personal Information",style: TextStyle(fontSize: 24,fontWeight: FontWeight.w500),).marginSymmetric(horizontal: 10),
            10.0.addHSpace(),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              width: double.infinity,
              decoration: BoxDecoration(
                border: Border.all(color: const Color(0xffE3E3E5),width: 1),
                borderRadius: BorderRadius.circular(10)
              ),
              child: Column(
                children: [
                  userDetails(leadingName: "Name :",suffixName: "User Name"),
                  userDetails(leadingName: "Email :",suffixName: "chris@gmail.com"),
                  userDetails(leadingName: "Location :",suffixName: "Sen Diego"),
                  userDetails(leadingName: "Zip Code :",suffixName: "1200"),
                  userDetails(leadingName: "Phone Number :",suffixName: "(+1)5484 4757 84"),
                ],
              ).marginSymmetric(horizontal: 5),
            ).marginSymmetric(horizontal: 10)
          ],
        ),
      ),
    );
  }
  Widget userInterface({Color? backColor,Widget? icon, required String title,required String subtitle}){
    return Container(
      height: 117,
      decoration:  BoxDecoration(
          color: Colors.white,
        borderRadius: BorderRadius.circular(10),
        boxShadow: const [
           BoxShadow(color: Color(0xffF5F5F7),blurRadius: 20,spreadRadius: 10)
        ]
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CircleAvatar(
            radius: 20,
            backgroundColor: backColor,
            child: icon
          ),
          10.0.addHSpace(),
           Text(title,style: const TextStyle(color: Color(0xff888888),fontWeight: FontWeight.w500,fontSize: 12),),
          5.0.addHSpace(),
           Text(subtitle,style: const TextStyle(fontSize: 14,fontWeight: FontWeight.w500),)
        ],
      ),
    ).marginAll(5);
  }

  Widget userDetails({required String leadingName,required String suffixName}){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Text(leadingName,style: const  TextStyle(color: Color(0xff8F8D8F),fontSize: 12,fontWeight: FontWeight.w400)),
        Text(suffixName,style: const TextStyle(color: Colors.black,fontSize: 12,fontWeight: FontWeight.w500)),
      ],
    ).marginSymmetric(vertical: 5);
  }
}
