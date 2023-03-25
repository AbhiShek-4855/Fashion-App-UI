import 'package:fashion_u/constant/app_assets.dart';
import 'package:fashion_u/constant/app_icon.dart';
import 'package:fashion_u/screens/product_view_pages/product_screen_controller.dart';
import 'package:fashion_u/utils/extension.dart';
import 'package:fashion_u/widgets/app_button.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant/app_color.dart';
import '../my_cart_pages/my_cart_screen.dart';

class ProductViewScreen extends StatelessWidget {
  Color? backGroundColor;

  ProductViewScreen({Key? key, this.backGroundColor}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    List<Color> colorList = const [
      Color(0xffBEE8EA),
      Color(0xff141B4A),
      Color(0xffCEE3F5),
      Color(0xffF4E5C3),
    ];
    ProductScreenController productScreenController = Get.put(ProductScreenController());
    return Scaffold(
      backgroundColor: backGroundColor,
      body: Column(
        children: [
          SizedBox(height: height / 25),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              IconButton(onPressed: () {
                Get.back();
              },
                icon: const Icon(Icons.arrow_back_ios, color: Colors.black),
                tooltip: "Back",),
              CircleAvatar(
                  backgroundColor: Colors.white,
                  child: AppIcon.favouriteIcon()
              ).marginOnly(right: 10)
            ],
          ),
          Image.asset(AppAssets.tShirtImage10),
          30.0.addHSpace(),
          Container(
            height: height / 2.7,
            width: double.infinity,
            decoration: const BoxDecoration(color: Colors.white,
                borderRadius: BorderRadius.only(topRight: Radius.circular(45),
                    topLeft: Radius.circular(45))),
            child: SingleChildScrollView(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  30.0.addHSpace(),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: const [
                      Text("Casual Henley Shirts", style: TextStyle(
                          color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 20),),
                      Text("₹175", style: TextStyle(color: Colors.black,
                          fontWeight: FontWeight.w500,
                          fontSize: 18),),
                    ],
                  ).marginSymmetric(horizontal: 10),
                  10.0.addHSpace(),
                  const Text(
                    "A Henley shirt is a collarless pullover shirt, by a round neckline and a placket about 3 to 5 inches (8 to 13 cm) long and usually having 2–5 buttons.",
                    style: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.5),
                        fontSize: 12,
                        fontWeight: FontWeight.w400),).marginSymmetric(
                      horizontal: 10),
                  15.0.addHSpace(),
                  const Text("Colors", style: TextStyle(
                      fontWeight: FontWeight.w400,
                      fontSize: 14,
                      color: Color(0xff00060A)),).marginSymmetric(horizontal: 10),
                  5.0.addHSpace(),
                  Obx(() {
                    return Row(
                      children: List.generate(
                          colorList.length, (index) =>
                          GestureDetector(
                              onTap: (){
                                productScreenController.selectedColorIndex(index);
                              },
                            child: Container(
                              decoration: BoxDecoration(
                                  shape: BoxShape.circle,
                                  border: productScreenController.colorIndex.value == index ? Border.all(color: AppColor.appColor) : null
                              ),
                              child: Container(
                                height: 30,
                                width: 30,
                                decoration: BoxDecoration(
                                    color: colorList[index],
                                    shape: BoxShape.circle
                                ),
                              ).marginAll(3),
                            ).marginAll(3),
                          )),
                    );
                  }).marginSymmetric(horizontal: 10),
                  20.0.addHSpace(),
                  Center(child: AppButton(text: "Add to Cart", onTap: (){
                    Get.to(const MyCartScreen(),transition: Transition.rightToLeft);
                  })),
                  5.0.addHSpace(),

                ],
              ),
            ),
          )
        ],
      ),
    );
  }
}
