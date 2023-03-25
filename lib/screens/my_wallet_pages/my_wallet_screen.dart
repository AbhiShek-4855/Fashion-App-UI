import 'package:fashion_u/utils/extension.dart';
import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:get/get.dart';
import '../../constant/app_assets.dart';
import '../../constant/app_color.dart';
import 'my_wallet_screen_controller.dart';

class MyWalletScreen extends StatelessWidget {
  const MyWalletScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    MyWalletScreenController myWalletScreenController = Get.put(
        MyWalletScreenController());
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(height: height / 20),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                IconButton(onPressed: () {
                  Get.back();
                },
                  icon: const Icon(Icons.arrow_back_ios),
                  tooltip: "Back",),
                const Text("My Wallets", style: TextStyle(color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 20),),
                IconButton(onPressed: () {},
                  icon: const Icon(Icons.more_vert),
                  tooltip: "Menu",),
              ],
            ),

            Obx(() {
              return CarouselSlider.builder(
                itemCount: 3,
                carouselController: myWalletScreenController.carouselController.value,
                itemBuilder: (context, index, realIdx) {
                  return Stack(
                    alignment: Alignment.topRight,
                    children: [
                      Container(
                        width: 300,
                        decoration: BoxDecoration(
                            image: DecorationImage(image: AssetImage(AppAssets.card1Image), fit: BoxFit.fitWidth)
                        ),
                        // child: Image.asset(AppAssets.card1Image),
                      ),
                      Container(
                        height: 38,
                        width: 38,
                        decoration: BoxDecoration(
                          color: const Color(0xff39CE8A),
                          shape: BoxShape.circle,
                          border: Border.all(color: Colors.white,width: 2)
                        ),
                        child: const Icon(Icons.check,color: Colors.white),
                      )
                    ],
                  );
                },
                options: CarouselOptions(
                onPageChanged: myWalletScreenController.onChange,
                autoPlay: true,
                  height: MediaQuery.of(context).size.height / 4.0,
                  aspectRatio: 16/9,
                  viewportFraction: 0.8,
                // aspectRatio: 2.0,
                enlargeCenterPage: true,
                ),
              );
            }),
            Obx(() {
              return Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(3, (index) =>
                    Container(
                      height: myWalletScreenController.cardIndex.value == index ? 15 : 10,
                      width:  myWalletScreenController.cardIndex.value == index ? 15 : 10,
                      decoration: BoxDecoration(
                          color:  myWalletScreenController.cardIndex.value == index ? AppColor.appColor : const Color(0xffFAE7E3),
                          shape: BoxShape.circle
                      ),
                    ).marginAll(4)),
              );
            }),

            30.0.addHSpace(),
            const Text("Recent transitions",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 18),).marginSymmetric(horizontal: 10),
            ListView.builder(
                shrinkWrap: true,
                itemCount: 7,
                physics: const NeverScrollableScrollPhysics(),
                itemBuilder: (context,index){
              return Container(
                padding: const EdgeInsets.symmetric(vertical: 5),
                decoration:  BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.circular(10)
                ),
                child: Row(
                  children: [
                    Container(
                      height: 69,
                      width: 69,
                      decoration: BoxDecoration(
                        color: const Color(0xffF3F9F8),
                        borderRadius: BorderRadius.circular(10)
                      ),
                      child: Center(
                        child: Image.asset(AppAssets.shirtImage1),
                      ),
                    ).marginOnly(left: 5),
                    10.0.addWSpace(),
                     Column(
                       crossAxisAlignment: CrossAxisAlignment.start,
                       children: const [
                         Text("Casual Shirts",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 14),),
                         Text("23 Mar’2021",style: TextStyle(color: Color.fromRGBO(0, 0, 0, 0.5),fontWeight: FontWeight.w500,fontSize: 12),)
                       ],
                     ),
                    const Spacer(),
                    Text("₹250",style: TextStyle(color: Color(0xffFF3535),fontWeight: FontWeight.w500,fontSize: 14,),).marginOnly(right: 5)

                  ],
                ),
              ).marginAll(5);
            })
          ],
        ),
      ),
    );
  }
}
