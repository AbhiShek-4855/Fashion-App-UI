import 'package:fashion_u/constant/app_assets.dart';
import 'package:fashion_u/screens/home_pages/home_screen_controller.dart';
import 'package:fashion_u/utils/extension.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../constant/app_icon.dart';
import '../../widgets/drawer_list_tile.dart';
import '../home_pages/home_screen.dart';
import '../my_order_pages/my_order_screen.dart';
import '../my_wallet_pages/my_wallet_screen.dart';
import '../setting_pages/setting_screen.dart';


class ExploreDrawer extends StatefulWidget {
  const ExploreDrawer({Key? key}) : super(key: key);

  @override
  State<ExploreDrawer> createState() => _ExploreDrawerState();
}

class _ExploreDrawerState extends State<ExploreDrawer> {
  @override
  Widget build(BuildContext context) {
    final height = MediaQuery.of(context).size.height;
    HomeScreenController homeScreenController = Get.put(HomeScreenController());
    return SingleChildScrollView(
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CircleAvatar(
                radius: 50,
                backgroundColor: Colors.black,
                backgroundImage: AssetImage(AppAssets.nullPersonImage),
              ),
              5.0.addWSpace(),
              Expanded(child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: const [
                  Text("Alex Nikiforov",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 18),),
                  Text("Fashion  Designer",style: TextStyle(color: Color(0xff7E7E7F),fontWeight: FontWeight.w500,fontSize: 14),),
                ],
              )),

              5.0.addWSpace(),
              const Icon(Icons.arrow_forward_ios,color: Colors.black,)

              // 5.0.addHSpace(),


            ],
          ).marginOnly(left: 10),

          Container(
            height: height/15,
          ),
          DrawerListTile(icon: AppIcon.myFavouriteIcon(),text: "My Favourite",onTap: (){
            sideMenuKey.currentState!.closeSideMenu();
            homeScreenController.tabIndex.value = 2;
          }),
          DrawerListTile(icon: AppIcon.walletIcon(),text: "Wallet",onTap: (){
            Get.to(const MyWalletScreen(),transition: Transition.rightToLeft);
          }),
          DrawerListTile(icon: AppIcon.myBagIcon(),text: "My orders",onTap: (){
            sideMenuKey.currentState!.closeSideMenu();
            homeScreenController.tabIndex.value = 1;
            // Get.to(const MyOrderScreen(),transition: Transition.rightToLeft);
          }),
          DrawerListTile(icon: AppIcon.aboutUsIcon(),text: "About us",onTap: (){}),
          DrawerListTile(icon: AppIcon.privacyPolicyIcon(),text: "Privacy policy",onTap: (){}),
          DrawerListTile(icon: AppIcon.settingIcon(),text: "Settings",onTap: (){
            Get.to(const SettingScreen(),transition: Transition.rightToLeft);
          }),
          Container(
            height: height/15,
          ),
          DrawerListTile(icon: AppIcon.logoutIcon(),text: "Log out",onTap: (){

          }),
          Container(
            height: height/15,
          ),
          // Image.asset(AppAssets.appIcon).marginOnly(left: 10),

          // Container(
          //   height: height/15,
          // ),
        ],
      ),
    );
  }
}
//
// class ExploreDrawer extends StatelessWidget {
//   const ExploreDrawer({Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     final height = MediaQuery.of(context).size.height;
//     return Column(
//       children: [
//         Row(
//           children: [
//             CircleAvatar(
//               radius: 50,
//               backgroundColor: Colors.black,
//               backgroundImage: AssetImage(AppAssets.nullPersonImage),
//             ),
//             5.0.addWSpace(),
//             Expanded(child: Column(
//               crossAxisAlignment: CrossAxisAlignment.start,
//               children: const [
//                  Text("Alex Nikiforov",style: TextStyle(color: Colors.black,fontWeight: FontWeight.w500,fontSize: 18),),
//                  Text("Fashion  Designer",style: TextStyle(color: Color(0xff7E7E7F),fontWeight: FontWeight.w500,fontSize: 14),),
//               ],
//             )),
//
//             5.0.addWSpace(),
//             const Icon(Icons.arrow_forward_ios,color: Colors.black,)
//
//             // 5.0.addHSpace(),
//
//
//           ],
//         ).marginOnly(left: 10),
//
//         Container(
//           height: height/15,
//         ),
//         DrawerListTile(icon: AppIcon.myFavouriteIcon(),text: "My Favourite"),
//
//       ],
//     );
//   }
// }
