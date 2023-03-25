
import 'package:get/get.dart';

class  SignUpScreenController  extends GetxController{
  RxBool term = false.obs;


  onTermChange(bool? value){
    term.value = value!;
    update();
  }

}