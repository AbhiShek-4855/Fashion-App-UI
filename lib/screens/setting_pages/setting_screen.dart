import 'package:fashion_u/constant/app_color.dart';
import 'package:fashion_u/screens/setting_pages/setting_screen_controller.dart';
import 'package:fashion_u/utils/extension.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant/app_icon.dart';
import '../../widgets/setting_list_tile.dart';

class SettingScreen extends StatelessWidget {
  const SettingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    SettingScreenController settingScreenController = Get.put(
        SettingScreenController());
    final height = MediaQuery
        .of(context)
        .size
        .height;
    return Scaffold(
      backgroundColor: AppColor.backGroundColor,
      body: Column(
        children: [
          SizedBox(height: height / 25),
          Stack(
              alignment: Alignment.centerLeft,
              children: [
                const Center(child: Text("Settings", style: TextStyle(
                    color: Colors.black,
                    fontWeight: FontWeight.w500,
                    fontSize: 20),)),

                IconButton(onPressed: () {
                  Get.back();
                }, icon: const Icon(Icons.arrow_back_ios), tooltip: "Back",)

              ]),

          30.0.addHSpace(),
          SettingListTile(
            leadingIcon: AppIcon.settingPageEmailIcon(),
            text: "Email Support",
            suffixIcon: const Icon(
                Icons.arrow_forward_ios, color: Color(0xff837F7F)),
            onTap: () {},
          ),
          SettingListTile(
            leadingIcon: AppIcon.faqIcon(),
            text: "FAQ",
            suffixIcon: const Icon(
                Icons.arrow_forward_ios, color: Color(0xff837F7F)),
            onTap: () {},
          ),
          SettingListTile(
            leadingIcon: AppIcon.lockIcon(),
            text: "Privacy Statement",
            suffixIcon: const Icon(
                Icons.arrow_forward_ios, color: Color(0xff837F7F)),
            onTap: () {},
          ),
          Obx(() {
            return SettingListTile(
              leadingIcon: Icon(Icons.notifications, color: AppColor.appColor),
              text: "Notification",
              suffixIcon: CupertinoSwitch(
                activeColor: AppColor.appColor,
                value: settingScreenController.notification.value,
                onChanged: settingScreenController.notificationOnChange,
              ),
              onTap: () {},
            );
          }),
          Obx(() {
            return SettingListTile(
              leadingIcon: AppIcon.updateIcon(),
              text: "Update",
              suffixIcon: CupertinoSwitch(
                activeColor: AppColor.appColor,
                value: settingScreenController.updateValue.value,
                onChanged: settingScreenController.updateValueOnChange,
              ),
              onTap: () {},
            );
          }),

        ],
      ),
    );
  }
}
