import 'package:ecommerce/config/navigation/navigation.dart';
import 'package:ecommerce/core/resources/resources.dart';
import 'package:ecommerce/core/services/responsive_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../config/theme/theme.dart';
import '../../../../../core/view/views.dart';

class ProductItem1 extends StatelessWidget {
  const ProductItem1({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed(Routes.productDetailsScreen),
      child: Container(
        padding: const EdgeInsets.symmetric(vertical: AppPadding.p16, horizontal: AppPadding.p12),
        decoration: BoxDecoration(
          color: AppColors.primary.withOpacity(0.05),
          borderRadius: BorderRadius.circular(AppSize.s16),
        ),
        width: AppSize.s150.h,
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          mainAxisSize: MainAxisSize.min,
          children: [
            const Expanded(
              child: CustomImage(
                image: AppImages.imgUnsplashSGyabqtoxk,
                width: double.infinity,
              ),
            ),
            SizedBox(height: AppSize.s12.v),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    AppStrings.msgNikeRunningShoes.tr,
                    textAlign: TextAlign.start,
                    maxLines: 2,
                    style: CustomTextStyles.bodyMediumCairo,
                  ),
                  SizedBox(height: AppSize.s12.v),
                  Row(
                    children: [
                      CustomText(
                        "USD 500",
                        style:
                            CustomTextStyles.labelLargeCairoGray40002.copyWith(decoration: TextDecoration.lineThrough),
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 4.h),
                        child: CustomText(
                          "USD 400",
                          style: CustomTextStyles.labelLargeCairo,
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: AppSize.s12.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomImage(
                        image: AppImages.imgFavoriteDuotone,
                        height: 20.adaptSize,
                        width: 20.adaptSize,
                      ),
                      const Spacer(),
                      CustomImage(
                        image: AppImages.imgStar,
                        height: AppSize.s14.adaptSize,
                        width: AppSize.s14.adaptSize,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 3.h),
                        child: Text("4.6", style: CustomTextStyles.bodySmallCairo),
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
