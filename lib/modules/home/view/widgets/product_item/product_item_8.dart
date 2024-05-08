import 'package:ecommerce/config/navigation/navigation.dart';
import 'package:ecommerce/core/resources/resources.dart';
import 'package:ecommerce/core/services/responsive_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../config/theme/theme.dart';
import '../../../../../core/view/views.dart';

class ProductItem8 extends StatelessWidget {
  const ProductItem8({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.topCenter,
      child: GestureDetector(
        onTap: () => Get.toNamed(Routes.productDetailsScreen),
        child: Container(
          width: 190.h,
          height: 250.v,
          margin: const EdgeInsets.only(top: 8),
          padding: const EdgeInsets.all(8),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(AppSize.s14),
            boxShadow: [
              BoxShadow(
                color: AppColors.black.withOpacity(0.07),
                blurRadius: 10,
                offset: const Offset(0, 2),
              )
            ],
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisSize: MainAxisSize.min,
            children: [
              const Expanded(
                child: CustomImage(
                  image: AppImages.sushi,
                  width: double.infinity,
                  height: double.infinity,
                  borderRadius: AppSize.s14,
                ),
              ),
              VerticalSpace(AppSize.s8.v),
              Row(
                children: [
                  Expanded(
                    child: CustomText(
                      "SUSHI",
                      maxLines: 1,
                      autoSized: true,
                      style:
                          Get.theme.textTheme.titleMedium?.copyWith(color: AppColors.primary, fontSize: FontSize.s14),
                    ),
                  ),
                  CustomText("\$12.30", style: Get.theme.textTheme.titleMedium),
                ],
              ),
              VerticalSpace(AppSize.s4.v),
              CustomText(
                "This text is replacaple",
                textAlign: TextAlign.start,
                maxLines: 1,
                autoSized: true,
                style: Get.theme.textTheme.titleSmall?.copyWith(color: AppColors.gray400, fontSize: FontSize.s10),
              ),
              VerticalSpace(AppSize.s8.v),
              Row(
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  Expanded(
                    flex: 2,
                    child: CustomButton(
                      padding: const EdgeInsets.all(AppPadding.p6),
                      text: AppStrings.lblAddToCart.tr,
                      color: AppColors.black,
                      onPressed: () {},
                    ),
                  ),
                  const Expanded(
                    flex: 1,
                    child: Center(
                      child: CustomImage(
                        image: AppImages.imgFavoriteLight,
                        width: AppSize.s28,
                        height: AppSize.s28,
                      ),
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
