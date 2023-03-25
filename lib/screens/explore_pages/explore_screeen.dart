import 'dart:math';

import 'package:fashion_u/constant/app_assets.dart';
import 'package:fashion_u/constant/app_color.dart';
import 'package:fashion_u/constant/app_icon.dart';
import 'package:fashion_u/utils/extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../modal/shirt_modal.dart';
import '../../widgets/app_button.dart';
import '../../widgets/app_text_field.dart';
import '../home_pages/home_screen.dart';
import '../product_view_pages/producct_view_screen.dart';
import 'explore_screen_controller.dart';

class ExploreScreen extends StatelessWidget {
  const ExploreScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;

    ExploreScreenController exploreScreenController = Get.put(ExploreScreenController());

    return GestureDetector(
      onTap: (){
        hideKeyboard(context);
      },
      child: Scaffold(
        backgroundColor: AppColor.backGroundColor,
        body: SingleChildScrollView(
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: height / 25),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  IconButton(onPressed: () {
                    sideMenuKey.currentState!.openSideMenu();
                  }, icon: AppIcon.drawerIcon(), tooltip: "Drawer"),

                  Row(
                    children: [
                      AppIcon.locationIcon(),
                      const Text("15/2 New Texas", style: TextStyle(
                          color: Colors.black, fontWeight: FontWeight.w400),)
                    ],
                  ),

                  IconButton(onPressed: () {},
                      icon: Stack(
                          alignment: Alignment.topRight,
                          children: [
                            AppIcon.notificationIcon(),
                            notificationLabel(),
                          ]),
                      tooltip: "Notification"),


                ],
              ),
              SizedBox(height: height / 25),
              const Text("Explore", style: TextStyle(color: Colors.black,
                  fontWeight: FontWeight.w500,
                  fontSize: 30),).marginSymmetric(horizontal: 10),
              10.0.addHSpace(),
              const Text("best Outfits for you", style: TextStyle(
                  color: Colors.grey, fontWeight: FontWeight.w300, fontSize: 30),)
                  .marginSymmetric(horizontal: 10),
              SizedBox(height: height / 25),
              ExploreTextField(
                onTap: () {
                  hideKeyboard(context);
                  showModalBottomSheet(
                      shape: const RoundedRectangleBorder(
                          borderRadius: BorderRadius.only(topLeft: Radius.circular(30), topRight: Radius.circular(30)
                          )
                      ),
                      context: context, builder: (context) {
                    return Container(
                      height: height / 1,
                      decoration: BoxDecoration(
                        borderRadius: const BorderRadius.only(
                            topLeft: Radius.circular(30),
                            topRight: Radius.circular(30)
                        ),
                        color: AppColor.backGroundColor,
                      ),
                      child: SingleChildScrollView(
                        physics: const BouncingScrollPhysics(),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            20.0.addHSpace(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                const Text("Clear",
                                  style: TextStyle(fontWeight: FontWeight.w400),),
                                const Text("Filters", style: TextStyle(
                                    fontWeight: FontWeight.w600,
                                    color: Color(0xff230A06),
                                    fontSize: 16),),
                                GestureDetector(
                                  onTap: () {
                                    Get.back();
                                  },
                                  child: const CircleAvatar(
                                    radius: 15,
                                    backgroundColor: Color(0xffEBEBEE),
                                    child: Icon(Icons.close, color: Colors.black),
                                  ),
                                )
                              ],
                            ),

                            30.0.addHSpace(),
                            const Text("Category", style: TextStyle(fontWeight: FontWeight.w500, color: Color(0xff230A06), fontSize: 18),),
                            5.0.addHSpace(),

                            SingleChildScrollView(
                              scrollDirection: Axis.horizontal,
                              physics: const BouncingScrollPhysics(),
                              child: Row(
                                children: List.generate(3, (index) =>
                                    Obx(() {
                                      return GestureDetector(
                                        onTap: () {
                                          exploreScreenController.selectedIndex(
                                              index);
                                        },
                                        child: Container(
                                          padding: const EdgeInsets.symmetric(
                                              horizontal: 20, vertical: 17),
                                          decoration: BoxDecoration(
                                              color: exploreScreenController
                                                  .categorySelected.value == index
                                                  ? Colors.orange
                                                  : Colors.white,
                                              borderRadius: BorderRadius.circular(
                                                  12)
                                          ),
                                          child: Center(
                                            child: Text(exploreScreenController
                                                .categoriesList[index],
                                                style: exploreScreenController
                                                    .categorySelected.value == index
                                                    ? const TextStyle(
                                                    color: Colors.white)
                                                    : const TextStyle(
                                                    color: Colors.black)),
                                          ),
                                        ),
                                      );
                                    }).marginSymmetric(horizontal: 5, vertical: 5)),
                              ),
                            ),
                            30.0.addHSpace(),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text("Pricing", style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff230A06),
                                    fontSize: 18),),
                                Text("₹50-₹200", style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff230A06),
                                    fontSize: 12),),
                              ],
                            ),
                            10.0.addHSpace(),
                            Obx(() {
                              // RangeValues values = RangeValues(1, 100);
                              return RangeSlider(
                                divisions: 5,
                                min: 50,
                                max: 200,
                                labels: RangeLabels("₹${exploreScreenController.pricingValue.value.start.toString()}", "₹${exploreScreenController.pricingValue.value.end.toString()}"),
                                values: exploreScreenController.pricingValue.value,
                                  onChanged: exploreScreenController.pricingMatch);
                            }),

                            30.0.addHSpace(),


                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: const [
                                Text("Distance", style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff230A06),
                                    fontSize: 18),),
                                Text("500m-2km", style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    color: Color(0xff230A06),
                                    fontSize: 12),),
                              ],
                            ),
                            10.0.addHSpace(),
                            Obx(() {
                              // RangeValues values = RangeValues(1, 100);
                              return RangeSlider(
                                  divisions: 5,
                                  min: 50,
                                  max: 200,

                                  labels: RangeLabels("${exploreScreenController.distanceValue.value.start.toString()}m", "${exploreScreenController.distanceValue.value.end.toString()}Km"),
                                  values: exploreScreenController.distanceValue.value,
                                  onChanged: exploreScreenController.distanceMatch);
                            }),
                            30.0.addHSpace(),
                            Center(
                              child: AppButton(
                                text: "Apply filter",
                                onTap: (){},
                              ),
                            ),



                          ],
                        ).marginSymmetric(horizontal: 10),
                      ),
                    );
                  });
                },
              ),
              30.0.addHSpace(),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Obx(() {
                  return Row(
                    children: List.generate(
                        exploreScreenController.itemList.length, (index) =>
                        Container(
                            height: 75,
                            width: 71,
                            decoration: BoxDecoration(
                                color: const Color(0xffFFFFFF),
                                borderRadius: BorderRadius.circular(15),
                                border: Border.all(color: const Color(0xffEEEEF0))
                            ),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.center,
                              children: [
                                Image.asset(
                                    exploreScreenController.itemList[index]),
                                5.0.addHSpace(),
                                const Text("Dress", style: TextStyle(
                                    color: Color(0xff7E7E7F),
                                    fontWeight: FontWeight.w500,
                                    fontSize: 12),)
                              ],
                            )
                        ).marginAll(9)
                    ),
                  );
                }),
              ),
              30.0.addHSpace(),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const Text("New Arrival", style: TextStyle(color: Colors.black,
                      fontWeight: FontWeight.w500,
                      fontSize: 20),).marginSymmetric(horizontal: 10),
                  const Text("See All", style: TextStyle(color: Color(0xff7E7E7F),
                      fontWeight: FontWeight.w500,
                      fontSize: 14),).marginSymmetric(horizontal: 10),
                ],
              ).marginSymmetric(horizontal: 10),
              20.0.addHSpace(),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                physics: const AlwaysScrollableScrollPhysics(
                    parent: BouncingScrollPhysics()),
                child: Row(
                  children: List.generate(shirtList.length, (index) =>
                      GestureDetector(
                        onTap: (){
                          Get.to(ProductViewScreen(backGroundColor: shirtList[index].backColor),transition: Transition.rightToLeft);
                        },
                        child: Column(
                          children: [
                            Container(
                              height: 142,
                              width: 133,
                              decoration: BoxDecoration(
                                  color: Colors.primaries[Random().nextInt(9)].withOpacity(0.1),
                                  borderRadius: BorderRadius.circular(15)
                              ),
                              child: Image.asset(shirtList[index].image.toString()),
                            ).paddingAll(8),
                             Text(shirtList[index].title.toString(), style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w400, fontSize: 12),),
                             Text(shirtList[index].price.toString(), style: const TextStyle(color: Colors.black, fontWeight: FontWeight.w400, fontSize: 12),),
                          ],
                        ),
                      )),
                ).marginSymmetric(horizontal: 10),
              ),
              20.0.addHSpace(),
              GridView.builder(
                shrinkWrap: true,
                  physics: const NeverScrollableScrollPhysics(),
                  itemCount: shirtList.length,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                    childAspectRatio: 2.7/4
                  ),
                  itemBuilder: (context,index){
                    return GestureDetector(
                      onTap: (){
                        Get.to(ProductViewScreen(backGroundColor: shirtList[index].backColor),transition: Transition.rightToLeft);
                      },
                      child: Column(
                        children: [
                          Container(
                            height: 200,
                            width: 200,
                            decoration: BoxDecoration(
                              color: shirtList[index].backColor,
                              borderRadius: BorderRadius.circular(10)
                            ),
                            child: Stack(
                              children: [
                                Row(
                                  mainAxisAlignment: MainAxisAlignment.end,
                                  children: [
                                    CircleAvatar(
                                      backgroundColor: Colors.white,
                                      radius: 15,
                                      child: shirtList[index].favourite == true ? AppIcon.favouriteIcon() : AppIcon.unFavouriteIcon(),
                                    ).paddingOnly(top: 5,right: 5)
                                  ],
                                ),
                                Column(
                                  mainAxisAlignment: MainAxisAlignment.center,
                                  crossAxisAlignment: CrossAxisAlignment.center,
                                  children: [

                                    Center(
                                      child: Image.asset(shirtList[index].image.toString()),
                                    ),
                                  ],
                                ),

                              ],
                            ),
                          ).marginAll(10),
                          Text(shirtList[index].title.toString()),
                          Text(shirtList[index].price.toString())
                        ],
                      ),
                    );
                  })


            ],
          ),
        ),
      ),
    );
  }
}
