import 'package:ecommerce/config/navigation/navigation.dart';
import 'package:ecommerce/core/resources/resources.dart';
import 'package:ecommerce/core/services/responsive_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../config/theme/theme.dart';
import '../../../../../core/view/views.dart';

class ProductItem2 extends StatelessWidget {
  const ProductItem2({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.topCenter,
      child: GestureDetector(
        onTap: () => Get.toNamed(Routes.productDetailsScreen),
        child: Container(
          width: 266.h,
          height: 240.v,
          margin: const EdgeInsets.only(top: 8),
          clipBehavior: Clip.antiAlias,
          foregroundDecoration: BoxDecoration(borderRadius: BorderRadius.circular(AppSize.s14)),
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
              Expanded(
                child: Stack(
                  children: [
                    const CustomImage(
                      image: AppImages.pizza,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                    Padding(
                      padding: const EdgeInsets.all(AppPadding.p12),
                      child: Row(
                        children: [
                          Container(
                            padding: const EdgeInsets.symmetric(vertical: AppPadding.p4, horizontal: AppPadding.p12),
                            decoration: const ShapeDecoration(shape: StadiumBorder(), color: AppColors.black),
                            child: CustomText(
                              "50%",
                              style: Get.theme.textTheme.labelLarge?.copyWith(
                                fontWeight: FontWeightManager.medium,
                                color: AppColors.white,
                              ),
                            ),
                          ),
                          const Spacer(),
                          Container(
                            padding: const EdgeInsets.all(AppPadding.p4),
                            decoration: BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.white.withOpacity(0.5),
                            ),
                            child: const CustomImage(
                              image: AppImages.imgFavoriteLight,
                              width: AppSize.s20,
                              height: AppSize.s20,
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                padding: const EdgeInsets.all(AppPadding.p12),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Expanded(
                          child: CustomText(
                            AppStrings.msgNikeRunningShoes.tr,
                            maxLines: 1,
                            autoSized: true,
                            style: Get.theme.textTheme.titleMedium
                                ?.copyWith(color: AppColors.primary, fontSize: FontSize.s14),
                          ),
                        ),
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
                    VerticalSpace(AppSize.s4.v),
                    CustomText(
                      "This text is replacaple",
                      textAlign: TextAlign.start,
                      maxLines: 1,
                      autoSized: true,
                      style: Get.theme.textTheme.titleSmall?.copyWith(color: AppColors.gray400, fontSize: FontSize.s10),
                    ),
                    VerticalSpace(AppSize.s4.v),
                    const Divider(),
                    VerticalSpace(AppSize.s4.v),
                    Row(
                      children: [
                        Expanded(
                          child: CustomText(
                            "\$12.30",
                            style: Get.theme.textTheme.titleMedium?.copyWith(fontSize: FontSize.s18.adaptSize),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(AppPadding.p6),
                          decoration: const BoxDecoration(shape: BoxShape.circle, color: AppColors.black),
                          child: const CustomImage(
                            image: AppImages.imgAddButton,
                            width: AppSize.s24,
                            height: AppSize.s24,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
