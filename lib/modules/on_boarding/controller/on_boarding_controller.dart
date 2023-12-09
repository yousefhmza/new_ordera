import 'package:ecommerce/core/resources/resources.dart';
import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';

import '../models/on_boarding_page_model.dart';

class OnBoardingController extends GetxController {
  @override
  void onInit() {
    super.onInit();
    pageController.addListener(listenToPageController);
  }

  @override
  void onClose() {
    super.onClose();
    pageController.removeListener(listenToPageController);
  }

  void listenToPageController() {
    pageController.page != null && pageController.page! > 0 ? showBackButton(true) : showBackButton(false);
  }

  RxBool showBackButton = false.obs;
  final PageController pageController = PageController();
  final List<OnBoardingPage> pages = [
    OnBoardingPage(
      image: AppImages.imgObjects,
      title: AppStrings.lblGetYourOrder.tr,
      desc: AppStrings.msgLoremIpsumDolor.tr,
    ),
    OnBoardingPage(
      image: AppImages.imgGroupGray10001,
      title: AppStrings.lblTrackOrder.tr,
      desc: AppStrings.msgLoremIpsumDolor.tr,
    ),
    OnBoardingPage(
      image: AppImages.imgIllustrationPurchase,
      title: AppStrings.lblPurchaseOnline.tr,
      desc: AppStrings.msgLoremIpsumDolor.tr,
    ),
  ];
}
