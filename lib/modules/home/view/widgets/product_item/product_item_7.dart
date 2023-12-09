import 'package:ecommerce/config/navigation/navigation.dart';
import 'package:ecommerce/core/resources/resources.dart';
import 'package:ecommerce/core/services/responsive_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../config/theme/theme.dart';
import '../../../../../core/view/views.dart';

class ProductItem7 extends StatelessWidget {
  const ProductItem7({super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.toNamed(Routes.productDetailScreen),
      child: Container(
        decoration: BoxDecoration(
          color: AppColors.primary.withOpacity(0.05),
          borderRadius: BorderRadius.circular(AppSize.s16),
        ),
        width: AppSize.s150.h,
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            const Expanded(
              child: Stack(
                children: [
                  Center(
                    child: CustomImage(
                      image: AppImages.imgUnsplashSGyabqtoxk,
                      fit: BoxFit.contain,
                      width: double.infinity,
                    ),
                  ),
                  PositionedDirectional(
                    top: AppPadding.p16,
                    end: AppPadding.p16,
                    child: CustomImage(image: AppImages.imgFavoriteLight, width: AppSize.s24, height: AppSize.s24),
                  ),
                ],
              ),
            ),
            Container(
              margin: const EdgeInsets.all(AppPadding.p6),
              padding: const EdgeInsets.all(AppPadding.p8),
              decoration: BoxDecoration(
                color: AppColors.white,
                borderRadius: BorderRadius.circular(AppSize.s16),
              ),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    AppStrings.msgNikeRunningShoes.tr,
                    textAlign: TextAlign.start,
                    maxLines: 1,
                    autoSized: true,
                    style: CustomTextStyles.bodyMediumCairo,
                  ),
                  SizedBox(height: AppSize.s8.v),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      CustomText(
                        "USD 400",
                        style: CustomTextStyles.labelLargeCairo,
                      ),
                      const Spacer(),
                      CustomImage(
                        image: AppImages.imgStar,
                        height: AppSize.s14.adaptSize,
                        width: AppSize.s14.adaptSize,
                      ),
                      Padding(
                        padding: EdgeInsets.only(left: 3.h),
                        child: Text(
                          "4.6",
                          style: CustomTextStyles.bodySmallCairo,
                        ),
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
