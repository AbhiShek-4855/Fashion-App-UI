import 'package:carousel_slider/carousel_controller.dart';
import 'package:carousel_slider/carousel_options.dart';
import 'package:get/get.dart';

class MyWalletScreenController extends GetxController{
  Rx<CarouselController> carouselController = CarouselController().obs;

  RxInt cardIndex = 0.obs;

  onChange(int index,CarouselPageChangedReason carouselPageChangedReason){
    cardIndex.value =  index;
    update();
  }


}