import 'package:fashion_u/constant/app_color.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant/app_icon.dart';
import '../../modal/shirt_modal.dart';
import '../product_view_pages/producct_view_screen.dart';

class FavouriteScreen extends StatelessWidget {
  const FavouriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
      body: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: height / 19),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: const [
                Center(child: Text("Favourite", style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 20),)),
              ],
            ),

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
    );
  }
}
