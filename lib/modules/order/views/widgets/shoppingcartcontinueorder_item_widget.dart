import 'package:ecommerce/core/services/responsive_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../config/theme/theme.dart';
import '../../../../core/resources/resources.dart';
import '../../../../core/view/views.dart';

// ignore: must_be_immutable
class ShoppingcartcontinueorderItemWidget extends StatelessWidget {
  const ShoppingcartcontinueorderItemWidget({Key? key}) : super(key: key);

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
            margin: EdgeInsets.only(bottom: 10.v),
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
                "USD 270",
                style: CustomTextStyles.titleSmallPrimary,
              ),
              SizedBox(height: 14.v),
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
                width: 205.h,
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
                      padding: EdgeInsets.only(
                        top: 9.v,
                        bottom: 10.v,
                      ),
                      child: Text(
                        "x",
                        style: Get.theme.textTheme.bodyLarge,
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
