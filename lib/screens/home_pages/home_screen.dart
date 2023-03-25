import 'package:fashion_u/constant/app_icon.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:shrink_sidemenu/shrink_sidemenu.dart';

import '../../constant/app_color.dart';
import '../explore_pages/explore_drawer.dart';
import '../explore_pages/explore_screeen.dart';
import '../favourite_pages/favourite_screen.dart';
import '../my_order_pages/my_order_screen.dart';
import '../profile_pages/profile_screen.dart';
import 'home_screen_controller.dart';

class HomeScreen extends StatelessWidget {

  buildBottomNavigationMenu(BuildContext context, HomeScreenController homeScreenController) {
    return Obx(() => MediaQuery(
        data: MediaQuery.of(context).copyWith(textScaleFactor: 1.0),
        child: ClipRRect(
          borderRadius: const BorderRadius.only(
            topRight: Radius.circular(20),
            topLeft: Radius.circular(20),
          ),
          child: SizedBox(
            height: 65,
            // decoration:  const  BoxDecoration(
            //   color: Colors.white,
            //   borderRadius:  BorderRadius.only(
            //     topRight: Radius.circular(20),
            //     topLeft: Radius.circular(20),
            //   ),
            // ),

            child: BottomNavigationBar(
              type: BottomNavigationBarType.fixed,
              // showUnselectedLabels: true,
              // elevation: 100,

              // showSelectedLabels: true,
              onTap: homeScreenController.changeTabIndex,
              currentIndex: homeScreenController.tabIndex.value,
              backgroundColor: Colors.white,
              unselectedItemColor: context.theme.cardColor,
              selectedItemColor: const Color(0xff1586EC),
              // unselectedLabelStyle: unselectedLabelStyle,
              // selectedLabelStyle: selectedLabelStyle,

              items:  [ // favouriteUnselectedIcon
                BottomNavigationBarItem(
                  icon:homeScreenController.tabIndex == 0 ? AppIcon.homeSelectedIcon() : AppIcon.homeUnSelectedIcon(),
                  label: '',
                  backgroundColor: AppColor.backGroundColor,
                ),

                BottomNavigationBarItem(
                  icon: homeScreenController.tabIndex == 1 ? AppIcon.cartSelectedIcon() : AppIcon.cartUnselectedIcon(),
                  label: '',
                  backgroundColor:  AppColor.backGroundColor,
                ),

                BottomNavigationBarItem(
                  icon: homeScreenController.tabIndex == 2 ? AppIcon.favouriteSelectedIcon() : AppIcon.favouriteUnselectedIcon(),
                  label: '',
                  backgroundColor: AppColor.backGroundColor,
                ),

                BottomNavigationBarItem(
                  icon:homeScreenController.tabIndex == 3 ? AppIcon.personSelectedIcon() : AppIcon.personUnSelectedIcon(),
                  label: '',
                  backgroundColor: AppColor.backGroundColor,
                ),
              ],
            ),
          ),
        )));
  }

  @override
  Widget build(BuildContext context) {
    bool isOpened = false;
    final HomeScreenController homeScreenController = Get.put(HomeScreenController(), permanent: false);
    return SideMenu(
      key: sideMenuKey,
      background: AppColor.backGroundColor,
      radius: BorderRadius.circular(12),
      maxMenuWidth: 350,
      closeIcon: const Icon(Icons.close,color: Colors.black),
      menu: const ExploreDrawer(),
      type: SideMenuType.shrinkNSlide,
      child: IgnorePointer(
        ignoring: isOpened,
        child: Scaffold(
          // key: sideMenuKey,
          backgroundColor: AppColor.backGroundColor,
          bottomNavigationBar: buildBottomNavigationMenu(context, homeScreenController),
          body: Obx(() => IndexedStack(
            index: homeScreenController.tabIndex.value,
            children: const [
              ExploreScreen(),
              MyOrderScreen(),
              FavouriteScreen(),
              ProfileScreen(),
              // ScannerScreen(),
              // CreateQRScreen(),
              // SettingPageScreen(),
            ],
          )
          ),
        ),
      ),
    );
  }

  Widget buildMenu() {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: 50.0),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 16.0),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: const [
                CircleAvatar(
                  backgroundColor: Colors.white,
                  radius: 22.0,
                ),
                SizedBox(height: 16.0),
                Text(
                  "Hello, John Doe",
                  style: TextStyle(color: Colors.white),
                ),
                SizedBox(height: 20.0),
              ],
            ),
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.home, size: 20.0, color: Colors.white),
            title: const Text("Home"),
            textColor: Colors.white,
            dense: true,
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.verified_user,
                size: 20.0, color: Colors.white),
            title: const Text("Profile"),
            textColor: Colors.white,
            dense: true,

            // padding: EdgeInsets.zero,
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.monetization_on,
                size: 20.0, color: Colors.white),
            title: const Text("Wallet"),
            textColor: Colors.white,
            dense: true,

            // padding: EdgeInsets.zero,
          ),
          ListTile(
            onTap: () {},
            leading: const Icon(Icons.shopping_cart,
                size: 20.0, color: Colors.white),
            title: const Text("Cart"),
            textColor: Colors.white,
            dense: true,

            // padding: EdgeInsets.zero,
          ),
          ListTile(
            onTap: () {},
            leading:
            const Icon(Icons.star_border, size: 20.0, color: Colors.white),
            title: const Text("Favorites"),
            textColor: Colors.white,
            dense: true,

            // padding: EdgeInsets.zero,
          ),
          ListTile(
            onTap: () {},
            leading:
            const Icon(Icons.settings, size: 20.0, color: Colors.white),
            title: const Text("Settings"),
            textColor: Colors.white,
            dense: true,

            // padding: EdgeInsets.zero,
          ),
        ],
      ),
    );
  }
}
final GlobalKey<SideMenuState> sideMenuKey = GlobalKey<SideMenuState>();