import 'package:ecommerce/core/resources/resources.dart';
import 'package:ecommerce/core/utils/globals.dart';
import 'package:ecommerce/modules/cart/views/screens/cart_screen.dart';
import 'package:ecommerce/modules/categories/view/screens/categories_screen.dart';
import 'package:ecommerce/modules/following/view/screens/following_screen.dart';
import 'package:ecommerce/modules/home/view/screens/home_screen.dart';
import 'package:ecommerce/modules/settings/views/screens/settings_screen.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../models/bnb_item_model.dart';

class LayoutController extends GetxController {
  RxInt selectedIndex = 0.obs;
  final List<BNBItemModel> bnbItemsList = [
    BNBItemModel(
      icon: AppImages.imgHome,
      activeIcon: AppImages.imgHomePrimary,
      title: AppStrings.lblHome.tr,
    ),
    BNBItemModel(
      icon: AppImages.imgNavCategories,
      activeIcon: AppImages.imgNavCategoriesPrimary,
      title: AppStrings.lblCategories.tr,
    ),
    BNBItemModel(
      icon: AppImages.imgNavFollowing,
      activeIcon: AppImages.imgNavFollowingPrimary,
      title: AppStrings.lblFollowing.tr,
    ),
    BNBItemModel(
      icon: AppImages.imgNavCart,
      activeIcon: AppImages.imgNavCartPrimary,
      title: AppStrings.lblCart.tr,
    ),
    BNBItemModel(
      icon: AppImages.imgNavAccount,
      activeIcon: AppImages.imgNavAccountPrimary,
      title: AppStrings.lblAccount.tr,
    )
  ];

  @override
  void onInit() {
    super.onInit();
    settings.initProductItemValues();
    settings.initCategoryChipsValues();
  }

  final List<Widget> screens = [
    HomeScreen(),
    CategoriesScreen(),
    FollowingScreen(),
    CartScreen(),
    SettingsScreen(),
  ];
}
