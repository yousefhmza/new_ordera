import 'package:ecommerce/core/services/responsive_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../config/theme/theme.dart';
import '../../../../core/resources/resources.dart';
import '../../../../core/view/views.dart';

class CartItem extends StatelessWidget {
  const CartItem({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Container(
            height: 104.adaptSize,
            width: 104.adaptSize,
            margin: EdgeInsets.only(bottom: 8.v),
            padding: EdgeInsets.all(10.h),
            decoration: AppDecoration.fillGray.copyWith(
              borderRadius: BorderRadiusStyle.roundedBorder10,
            ),
            child: CustomImage(
              image: AppImages.imgImage584x84,
              height: 84.adaptSize,
              width: 84.adaptSize,
            ),
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 1.v),
                    child: Text(
                      "Headphone TMA - 2",
                      style: Get.theme.textTheme.bodyLarge,
                    ),
                  ),
                  Opacity(
                    opacity: 0.8,
                    child: CustomImage(
                      image: AppImages.imgIconTrash2,
                      height: 20.adaptSize,
                      width: 20.adaptSize,
                      margin: EdgeInsets.only(left: 30.h),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 3.v),
              Text(
                "USD 456",
                style: CustomTextStyles.titleSmallPrimary,
              ),
              SizedBox(height: 11.v),
              Row(
                children: [
                  Text(
                    AppStrings.lblColor.tr,
                    style: Get.theme.textTheme.bodySmall,
                  ),
                  Container(
                    height: 13.adaptSize,
                    width: 13.adaptSize,
                    margin: EdgeInsets.only(left: 8.h),
                    decoration: BoxDecoration(
                      color: AppColors.black,
                      borderRadius: BorderRadius.circular(6.h),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 3.v),
              SizedBox(
                width: 207.h,
                child: Row(
                  children: [
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 12.v),
                      child: Text(
                        AppStrings.lblSeller.tr,
                        style: Get.theme.textTheme.bodySmall,
                      ),
                    ),
                    CustomImage(
                      image: AppImages.imgSimpleIconsSony,
                      height: 40.adaptSize,
                      width: 40.adaptSize,
                      margin: EdgeInsets.only(left: 8.h),
                    ),
                    Spacer(),
                    Padding(
                      padding: EdgeInsets.symmetric(vertical: 8.v),
                      child: CustomIconButton(
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        padding: EdgeInsets.all(2.h),
                        child: CustomImage(
                          image: AppImages.imgIconMinus,
                        ),
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 16.h,
                        top: 8.v,
                        bottom: 10.v,
                      ),
                      child: Text(
                        "1",
                        style: Get.theme.textTheme.bodyLarge,
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 17.h,
                        top: 8.v,
                        bottom: 8.v,
                      ),
                      child: CustomIconButton(
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        padding: EdgeInsets.all(2.h),
                        child: CustomImage(
                          image: AppImages.imgIconPlus,
                        ),
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }
}
