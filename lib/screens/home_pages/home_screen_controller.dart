import 'package:get/get.dart';

class HomeScreenController extends GetxController{
  RxInt tabIndex = 0.obs;
  void  changeTabIndex(int index){
    tabIndex.value = index;
    update();
  }
}