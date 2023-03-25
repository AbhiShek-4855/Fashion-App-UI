import 'package:get/get.dart';

class ProductScreenController extends GetxController{
  RxInt colorIndex = 0.obs;

  selectedColorIndex(int index){
    colorIndex.value  = index;
    print("Color  index ----> ${colorIndex.value}");
    update();
  }

}