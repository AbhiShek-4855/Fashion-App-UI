import 'package:fashion_u/constant/app_color.dart';
import 'package:fashion_u/utils/extension.dart';
import 'package:fashion_u/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../modal/shirt_modal.dart';
import '../check_out_pages/check_out_screen.dart';

class MyCartScreen extends StatelessWidget {
  const MyCartScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
      bottomNavigationBar: Container(
        height: 130,
        // color: Colors.red,
        child: Column(
          children: [
            10.0.addHSpace(),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: const  [
                Text("Subtotal :",style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w500),),
                Text("₹740",style: TextStyle(color: Color(0xff222030),fontSize: 18,fontWeight: FontWeight.w400),),
              ],
            ).marginSymmetric(horizontal: 20),
            const Spacer(),
            AppButton(text: "Checkout", onTap: (){
              Get.to(const CheckOutScreen(),transition: Transition.rightToLeft);
            }),
            10.0.addHSpace()
          ],
        ),
      ),
      body: Column(
        children: [
          SizedBox(height: height / 25),
          Stack(
            alignment: Alignment.centerLeft,
            children: [

              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: const [
                  Center(child: Text("Profile",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 20),)),
                ],
              ),
              IconButton(onPressed: (){
                Get.back();
              }, icon: const Icon(Icons.arrow_back_ios),tooltip: "Back",),
            ],
          ),
          ListView.builder(
            shrinkWrap: true,
              itemCount: myCartList.length,
              itemBuilder: (context,index){
            return Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                children: [
                  Container(
                    height: 73,
                    width: 84,
                    decoration: BoxDecoration(
                      color: myCartList[index].backColor,
                      borderRadius: BorderRadius.circular(15)
                    ),
                    child: Center(
                      child: Image.asset(myCartList[index].image.toString()),
                    ),
                  ).marginOnly(left: 5),
                  5.0.addWSpace(),
                  Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(myCartList[index].title.toString(),style: const TextStyle(color: Color.fromRGBO(0, 0, 0, 0.5),fontWeight: FontWeight.w400,fontSize: 14),),
                      Text(myCartList[index].price.toString(),style: const TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 16),),
                    ],
                  ),
                  const Spacer(),
                  Container(height: 25,width: 25,decoration: BoxDecoration(color: Color(0xffFEEBE5),borderRadius: BorderRadius.circular(5)),child: Icon(Icons.add,color: AppColor.appColor,size: 12),),

                  3.0.addWSpace(),
                  Text(myCartList[index].qty.toString(),style: TextStyle(color: Colors.black,fontSize: 14,fontWeight: FontWeight.w400),),
                  3.0.addWSpace(),
                  Container(height: 25,width: 25,decoration: BoxDecoration(color: Color(0xffFEEBE5),borderRadius: BorderRadius.circular(5)),child: Icon(Icons.remove,color: AppColor.appColor,size: 12),),



                ],
              ),
            ).marginSymmetric(horizontal: 10,vertical: 5);
          })

        ],
      ),
    );
  }
}
