import 'package:fashion_u/constant/app_icon.dart';
import 'package:fashion_u/utils/extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../constant/app_color.dart';
import '../congratulation_pages/congratulation_screen.dart';
import 'check_out_screen_controller.dart';

class CheckOutScreen extends StatelessWidget {
  const CheckOutScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    CheckOutScreenController checkOutScreenController = Get.put(
        CheckOutScreenController());
    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height / 25),
            Stack(
              alignment: Alignment.centerLeft,
              children: [
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: const [
                    Center(child: Text("Checkout", style: TextStyle(
                        color: Colors.black,
                        fontWeight: FontWeight.w500,
                        fontSize: 20),)),
                  ],
                ),
                IconButton(onPressed: () {
                  Get.back();
                }, icon: const Icon(Icons.arrow_back_ios), tooltip: "Back",),
              ],
            ),

            30.0.addHSpace(),
            const Text("Delivery address", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 18),).marginOnly(left: 10),
            10.0.addHSpace(),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
              ),
              child: Row(
                children: [
                  Obx(() {
                    return Checkbox(
                        fillColor: MaterialStateProperty.all(AppColor.appColor),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                        value: checkOutScreenController.homeCheck.value,
                        onChanged: checkOutScreenController.onHomeChange);
                  }),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Home",style: TextStyle(color: Colors.black,fontSize: 16),),
                      2.0.addHSpace(),
                      const Text("(342)  4522019",style: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.5),fontSize: 16),),
                      2.0.addHSpace(),
                      const Text("220  New York",style: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.5),fontSize: 12),)
                    ],
                  ),
                  const Spacer(),
                  AppIcon.editIcon().marginOnly(right: 10)
                ],
              ),
            ).marginSymmetric(horizontal: 10),

            5.0.addHSpace(),

            Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(
                  color: Colors.transparent,
                  borderRadius: BorderRadius.circular(10),
                border: Border.all(color:  const Color(0xffEEEEF0),width: 1)
              ),
              child: Row(
                children: [
                  Obx(() {
                    return Checkbox(
                        fillColor: MaterialStateProperty.all(AppColor.appColor),
                        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
                        value: checkOutScreenController.officeCheck.value,
                        onChanged: checkOutScreenController.onOfficeChange);
                  }),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text("Office",style: TextStyle(color: Colors.black,fontSize: 16),),
                      2.0.addHSpace(),
                      const Text("(342) 4522019",style: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.5),fontSize: 16),),
                      2.0.addHSpace(),
                      const Text("220 Montmartre,paris",style: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.5),fontSize: 12),)
                    ],
                  ),
                  const Spacer(),
                  AppIcon.editIcon().marginOnly(right: 10)
                ],
              ),
            ).marginSymmetric(horizontal: 10),

            30.0.addHSpace(),

            const Text("Billing information", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 18),).marginOnly(left: 10),

            10.0.addHSpace(),
            Container(
              padding: const EdgeInsets.symmetric(vertical: 10),
              decoration: BoxDecoration(color: Colors.white,borderRadius: BorderRadius.circular(15)),
              child: Column(
                children: [
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Delivery Fee     : ",style: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.5),fontSize: 14,fontWeight: FontWeight.w400),),
                      Text("₹50",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500),)
                    ],
                  ).marginSymmetric(horizontal: 10),
                  8.0.addHSpace(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Subtotal            :",style: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.5),fontSize: 14,fontWeight: FontWeight.w400),),
                      Text("₹740",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500),)
                    ],
                  ).marginSymmetric(horizontal: 10),
                  8.0.addHSpace(),
                  const Divider(height: 1,color: Color(0xffF4F4F4),),
                  8.0.addHSpace(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Total                   :",style: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.5),fontSize: 14,fontWeight: FontWeight.w400),),
                      Text("₹790",style: TextStyle(color: Colors.black,fontSize: 16,fontWeight: FontWeight.w500),)
                    ],
                  ).marginSymmetric(horizontal: 10),
                ],
              ),
            ).marginSymmetric(horizontal: 10),

            30.0.addHSpace(),
            const Text("Payment Method", style: TextStyle(color: Colors.black, fontWeight: FontWeight.w500, fontSize: 18),).marginOnly(left: 10),

            10.0.addHSpace(),

            Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                Stack(
                  alignment: Alignment.topRight,
                  children: [
                    Container(
                      height: 55,
                      width: 70,
                      decoration: BoxDecoration(
                        color: Colors.white,
                        borderRadius: BorderRadius.circular(15)
                      ),
                      child: AppIcon.appPayIcon().marginSymmetric(horizontal: 5),
                    ),
                     const CircleAvatar(radius: 10,backgroundColor: Color(0xff39CE8A),child: Icon(Icons.check,color: Colors.white,size: 14),)
                  ],
                ),
                Container(
                  height: 55,
                  width: 70,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: AppIcon.visalogoIcon().marginSymmetric(horizontal: 5),
                ),

                Container(
                  height: 55,
                  width: 70,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: AppIcon.masterCardIcon().marginSymmetric(horizontal: 5),
                ),

                Container(
                  height: 55,
                  width: 70,
                  decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(15)
                  ),
                  child: AppIcon.payPalIcon().marginSymmetric(horizontal: 5),
                ),
              ],
            ),

            30.0.addHSpace(),

            GestureDetector(
              onTap: (){
                Get.to(const CongratulationScreen());
              },
              child: Container(
                height: 59,
                width: double.infinity,
                decoration: BoxDecoration(
                  color: AppColor.appColor,
                  borderRadius: BorderRadius.circular(30)
                ),
                child: Stack(
                  alignment: Alignment.centerLeft,
                  children: [
                    const Center(child: Text("Swipe for Payment",style: TextStyle(color: Colors.white,fontSize: 14,fontWeight: FontWeight.w500),)),
                    CircleAvatar(radius: 23,backgroundColor: Colors.white,child: Icon(Icons.arrow_forward,color: AppColor.appColor),).marginOnly(left: 5)
                  ],
                ),
              ).marginSymmetric(horizontal: 30),
            )


          ],
        ),
      ),
    );
  }
}
