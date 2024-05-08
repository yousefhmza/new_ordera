import 'package:ecommerce/config/navigation/navigation.dart';
import 'package:ecommerce/core/resources/resources.dart';
import 'package:ecommerce/core/view/views.dart';
import 'package:ecommerce/modules/on_boarding/view/widgets/on_boarding_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:smooth_page_indicator/smooth_page_indicator.dart';

import '../../controller/on_boarding_controller.dart';

class OnBoardingScreen extends GetWidget<OnBoardingController> {
  const OnBoardingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return StatusBar(
      child: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const VerticalSpace(AppSize.s16),
              Expanded(
                child: PageView.builder(
                  itemBuilder: (context, index) => OnBoardingItem(
                    image: controller.pages[index].image,
                    title: controller.pages[index].title,
                    desc: controller.pages[index].desc,
                  ),
                  controller: controller.pageController,
                  itemCount: controller.pages.length,
                ),
              ),
              const VerticalSpace(AppSize.s32),
              SmoothPageIndicator(
                controller: controller.pageController,
                count: controller.pages.length,
                effect: ScrollingDotsEffect(
                  spacing: AppSize.s12,
                  activeDotColor: AppColors.primary,
                  dotColor: AppColors.primary.withOpacity(0.42),
                  activeDotScale: 1,
                  dotHeight: AppSize.s12,
                  dotWidth: AppSize.s12,
                ),
              ),
              const VerticalSpace(AppSize.s32),
              Obx(
                () => Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppPadding.p18),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      if (controller.showBackButton.value)
                        Expanded(
                          child: CustomButton(
                            isOutlined: true,
                            textColor: AppColors.primary,
                            text: AppStrings.lblBack.tr,
                            onPressed: () => controller.pageController.previousPage(
                              duration: Time.t450ms,
                              curve: Curves.easeInOut,
                            ),
                          ),
                        ),
                      if (controller.showBackButton.value) const HorizontalSpace(AppSize.s16),
                      Expanded(
                        child: CustomButton(
                          text: AppStrings.lblNext.tr,
                          onPressed: () {
                            controller.pageController.page == 2.0
                                ? Get.toNamed(Routes.loginScreen)
                                : controller.pageController.nextPage(duration: Time.t450ms, curve: Curves.easeInOut);
                          },
                        ),
                      ),
                    ],
                  ),
                ),
              ),
              const VerticalSpace(AppSize.s64),
            ],
          ),
        ),
      ),
    );
  }
}
