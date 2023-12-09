import 'package:ecommerce/core/resources/resources.dart';
import 'package:ecommerce/core/services/responsive_service.dart';
import 'package:ecommerce/modules/layout/controller/layout_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../config/theme/theme.dart';
import '../../../../core/view/views.dart';

class BNB extends GetWidget<LayoutController> {
  const BNB({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 80.v,
      decoration: BoxDecoration(
        color: AppColors.white,
        boxShadow: [
          BoxShadow(
            color: AppColors.black.withOpacity(0.1),
            spreadRadius: 2.h,
            blurRadius: 2.h,
            offset: const Offset(10, 0),
          ),
        ],
      ),
      child: Obx(
        () => Theme(
          data: Theme.of(context).copyWith(splashColor: AppColors.transparent),
          child: BottomNavigationBar(
            backgroundColor: Colors.transparent,
            showSelectedLabels: false,
            showUnselectedLabels: false,
            selectedFontSize: 0,
            elevation: 0,
            currentIndex: controller.selectedIndex.value,
            type: BottomNavigationBarType.fixed,
            items: List.generate(
              controller.bnbItemsList.length,
              (index) => BottomNavigationBarItem(
                icon: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomImage(
                      image: controller.bnbItemsList[index].icon,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      color: AppColors.gray500,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8.v),
                      child: CustomText(
                        controller.bnbItemsList[index].title ?? "",
                        style: CustomTextStyles.labelLargeCairoGray500.copyWith(color: AppColors.gray500),
                      ),
                    ),
                  ],
                ),
                activeIcon: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    CustomImage(
                      image: controller.bnbItemsList[index].activeIcon,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                    ),
                    Padding(
                      padding: EdgeInsets.only(top: 8.v),
                      child: CustomText(
                        controller.bnbItemsList[index].title ?? "",
                        style: CustomTextStyles.labelLargeCairoGray500.copyWith(color: AppColors.gray500),
                      ),
                    ),
                  ],
                ),
                label: '',
              ),
            ),
            onTap: (index) => controller.selectedIndex(index),
          ),
        ),
      ),
    );
  }
}
