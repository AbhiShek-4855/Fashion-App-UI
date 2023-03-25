import 'package:fashion_u/constant/app_color.dart';
import 'package:fashion_u/constant/app_icon.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../constant/app_assets.dart';

class AppTextField extends StatelessWidget {

  final String? hintText;
  final Widget icon;
  final TextInputType? keyboardType;
  final FormFieldValidator<String>? validator;

  AppTextField({Key? key,this.hintText,required this.icon,this.validator,this.keyboardType}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      cursorColor: AppColor.appColor,
      validator: validator,
      keyboardType: keyboardType,
      decoration: InputDecoration(
        hintText: hintText,
        prefixIcon: Stack(
          alignment: Alignment.center,
            children: [
              Image.asset(AppAssets.iconBackGround),
              icon,
            ],
        ).marginOnly(left: 7,right: 10),
        hintStyle: const TextStyle(fontSize: 15, color: Color(0xff918583),fontWeight: FontWeight.w400),
        filled: true,
        fillColor: Colors.white,
        // border: outLineBorder,
        border: OutlineInputBorder(
          borderRadius: BorderRadius.circular(18),
          borderSide: BorderSide.none
        ),
        contentPadding:  const EdgeInsets.symmetric(horizontal: 8, vertical: 23),
        enabledBorder:  UnderlineInputBorder(borderSide: const BorderSide(color: Colors.transparent, width: 1),borderRadius: BorderRadius.circular(12)),
        errorBorder:  UnderlineInputBorder(borderSide: const BorderSide(color: Colors.transparent, width: 1),borderRadius: BorderRadius.circular(12)),
        focusedErrorBorder:  UnderlineInputBorder(borderSide: const BorderSide(color: Colors.transparent, width: 1),borderRadius: BorderRadius.circular(12)),
      ),
    ).marginSymmetric(horizontal: 10);
  }
}

class ExploreTextField extends StatelessWidget {
  TextEditingController? textEditingController;
  VoidCallback? onTap;
  ExploreTextField({Key? key,this.textEditingController,this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      controller: textEditingController,
      cursorColor: AppColor.appColor,
      keyboardType: TextInputType.name,
      decoration: InputDecoration(
        hintText: "Search items...",
        prefixIcon: const Icon(Icons.search_rounded),
        prefixIconColor: AppColor.appColor,
        suffixIcon: GestureDetector(
          onTap: onTap,
          child: Stack(
            alignment: Alignment.center,
              children: [
                AppIcon.ractangleImage(),
                AppIcon.filterIcon(),
              ]).marginOnly(right: 10),
        ),
        hintStyle: const TextStyle(fontSize: 15, color: Color(0xff918583),fontWeight: FontWeight.w400),
        filled: true,
        fillColor: Colors.white,
        // border: outLineBorder,
        border: OutlineInputBorder(
            borderRadius: BorderRadius.circular(18),
            borderSide: BorderSide.none
        ),
        contentPadding:  const EdgeInsets.symmetric(horizontal: 8, vertical: 18),
        enabledBorder:  UnderlineInputBorder(borderSide: const BorderSide(color: Colors.transparent, width: 1),borderRadius: BorderRadius.circular(12)),
        errorBorder:  UnderlineInputBorder(borderSide: const BorderSide(color: Colors.transparent, width: 1),borderRadius: BorderRadius.circular(12)),
        focusedErrorBorder:  UnderlineInputBorder(borderSide: const BorderSide(color: Colors.transparent, width: 1),borderRadius: BorderRadius.circular(12)),
      ),
    ).marginSymmetric(horizontal: 10);
  }
}

