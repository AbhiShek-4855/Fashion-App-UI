import 'package:flutter_svg/flutter_svg.dart';
import 'package:flutter/material.dart';

import 'app_assets.dart';
import 'app_color.dart';


class AppIcon{
  static Widget facebookIcon() {
    return SvgPicture.asset(
      AppAssets.facebookIcon,
      height: 10,
      width: 10,
    );
  }

  static Widget googleIcon() {
    return SvgPicture.asset(
      AppAssets.googleIcon,
      height: 10,
      width: 10,
    );
  }

  static Widget homeUnSelectedIcon() {
    return SvgPicture.asset(
      AppAssets.homeUnSelectedIcon,
      // height: 27,
      // width: 27,
      // color: const Color(0xff787878),
    );
  }

  static Widget homeSelectedIcon() {
    return SvgPicture.asset(
      AppAssets.homeSelectedIcon,
      // height: 27,
      // width: 27,
      color: AppColor.appColor,
    );
  }


  static Widget cartUnselectedIcon() {
    return SvgPicture.asset(
      AppAssets.cartUnselectedIcon,
      // height: 27,
      // width: 27,
      // color: const Color(0xff787878),
    );
  }
  static Widget cartSelectedIcon() {
    return SvgPicture.asset(
      AppAssets.cartSelectedIcon,
      // height: 27,
      // width: 27,
      color: AppColor.appColor,
    );
  }

  static Widget favouriteUnselectedIcon() {
    return SvgPicture.asset(
      AppAssets.favouriteUnselectedIcon,
    );
  }
  static Widget favouriteSelectedIcon() {
    return SvgPicture.asset(
      AppAssets.favouriteSelectedIcon,
      height: 25,
      width: 25,
      color: AppColor.appColor,
    );
  }

  static Widget personUnSelectedIcon() {
    return SvgPicture.asset(
      AppAssets.personUnSelectedIcon,
      // height: 27,
      // width: 27,
      color: const Color(0xff787878),
    );
  }
  static Widget personSelectedIcon() {
    return SvgPicture.asset(
      AppAssets.personSelectedIcon,
      // height: 27,
      // width: 27,
      color: AppColor.appColor,
    );
  }

  static Widget drawerIcon() {
    return SvgPicture.asset(
      AppAssets.drawerIcon,
    );
  }

  static Widget locationIcon() {
    return SvgPicture.asset(
      AppAssets.locationIcon,
    );
  }

  static Widget notificationIcon({Color? color}) {
    return SvgPicture.asset(
      AppAssets.notificationIcon,
      color: color,
    );
  }

  static Widget myFavouriteIcon() {
    return SvgPicture.asset(
      AppAssets.myFavouriteIcon,
      height: 25,
      width: 25,
    );
  }
  static Widget walletIcon() {
    return SvgPicture.asset(
      AppAssets.walletIcon,
      height: 25,
      width: 25,
    );
  }
  static Widget myBagIcon() {
    return SvgPicture.asset(
      AppAssets.myBagIcon,
      height: 25,
      width: 25,
    );
  }
  static Widget aboutUsIcon() {
    return SvgPicture.asset(
      AppAssets.aboutUsIcon,
      height: 25,
      width: 25,
    );
  }
  static Widget privacyPolicyIcon() {
    return SvgPicture.asset(
      AppAssets.privacyPolicyIcon,
      height: 25,
      width: 25,
    );
  }
  static Widget settingIcon() {
    return SvgPicture.asset(
      AppAssets.settingIcon,
      height: 25,
      width: 25,
    );
  }
  static Widget logoutIcon() {
    return SvgPicture.asset(
      AppAssets.logoutIcon,
      height: 25,
      width: 25,
    );
  }

  static Widget ractangleImage() {
    return SvgPicture.asset(
      AppAssets.ractangleImage,
    );
  }
  static Widget filterIcon() {return SvgPicture.asset(AppAssets.filterIcon,);}

  static Widget searchIcon() {
    return SvgPicture.asset(
      AppAssets.searchIcon,height: 10,width: 10,
    );}

  static Widget bagIcon() {
    return SvgPicture.asset(
      AppAssets.bagIcon,
    );
  }

  static Widget promoCodeIcon() {
    return SvgPicture.asset(
      AppAssets.promoCodeIcon,
    );
  }
  static Widget starIcon() {
    return SvgPicture.asset(
      AppAssets.starIcon,
    );
  }

  static Widget settingPageEmailIcon() {
    return SvgPicture.asset(
      AppAssets.settingPageEmailIcon,
    );
  }
  static Widget faqIcon() {
    return SvgPicture.asset(
      AppAssets.faqIcon,
    );
  }
  static Widget lockIcon() {
    return SvgPicture.asset(
      AppAssets.lockIcon,
    );
  }
  static Widget updateIcon() {
    return SvgPicture.asset(
      AppAssets.updateIcon,
    );
  }


  static Widget unFavouriteIcon() {
    return SvgPicture.asset(
      AppAssets.unFavouriteIcon,
    );
  }

  static Widget favouriteIcon() {
    return SvgPicture.asset(

      AppAssets.favouriteIcon,
    );
  }


  static Widget editIcon() {
    return SvgPicture.asset(

      AppAssets.editIcon,
    );
  }

  static Widget appPayIcon() {
    return SvgPicture.asset(
      AppAssets.appPayIcon,
    );
  }

  static Widget visalogoIcon() {
    return SvgPicture.asset(
      AppAssets.visalogoIcon,
    );
  }


  static Widget masterCardIcon() {
    return SvgPicture.asset(
      AppAssets.masterCardIcon,
    );
  }

  static Widget payPalIcon() {
    return SvgPicture.asset(
      AppAssets.payPalIcon,
    );
  }

  static Widget congratulationBorderIcon() {
    return SvgPicture.asset(
      AppAssets.congratulationBorderIcon,
    );
  }

  static Widget conGratulationCheckIcon() {
    return SvgPicture.asset(
      AppAssets.conGratulationCheckIcon,
    );
  }
}