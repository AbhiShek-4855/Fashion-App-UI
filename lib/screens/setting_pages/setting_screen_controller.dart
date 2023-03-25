import 'package:get/get.dart';

class  SettingScreenController extends GetxController{
  RxBool notification = false.obs;
  RxBool updateValue = false.obs;

  notificationOnChange(bool value){
    notification.value = value;
    update();
  }

  updateValueOnChange(bool value){
    updateValue.value = value;
    update();
  }

}