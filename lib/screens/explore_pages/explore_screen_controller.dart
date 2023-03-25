import 'package:fashion_u/constant/app_assets.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ExploreScreenController extends GetxController{

  RxList itemList = [
    AppAssets.dressImage,
    AppAssets.shirtImage,
    AppAssets.pantsImage,
    AppAssets.tShirtImage,
  ].obs;

  RxList categoriesList = <String>[
    "New Arrival",
    "Top Trading",
    "Featured Products"
  ].obs;

  RxInt categorySelected = 0.obs;

  void selectedIndex(int  index){
    categorySelected.value = index;
    update();
  }

  Rx<RangeValues> pricingValue = const RangeValues(50, 100).obs;
  pricingMatch(RangeValues value){
    pricingValue.value = value;
    update();
  }

  Rx<RangeValues> distanceValue = const RangeValues(50, 100).obs;
  distanceMatch(RangeValues value){
    distanceValue.value = value;
    update();
  }


}