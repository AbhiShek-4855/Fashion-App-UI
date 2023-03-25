import 'package:get/get.dart';

class CheckOutScreenController extends GetxController{
  RxBool homeCheck = true.obs;
  RxBool officeCheck = false.obs;


  onHomeChange(bool? value){
    homeCheck.value = value!;
    update();
  }

  onOfficeChange(bool? value){
    officeCheck.value = value!;
    update();
  }

}