import 'package:ecommerce/config/navigation/navigation.dart';
import 'package:ecommerce/core/resources/resources.dart';
import 'package:ecommerce/core/services/responsive_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../config/theme/theme.dart';
import '../../../../../core/view/views.dart';

class ProductItem10 extends StatelessWidget {
  const ProductItem10({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.topCenter,
      child: GestureDetector(
        onTap: () => Get.toNamed(Routes.productDetailScreen),
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
                        CustomText(
                          "\$12.30",
                          style: Get.theme.textTheme.titleMedium?.copyWith(fontSize: FontSize.s18.adaptSize),
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
                    VerticalSpace(AppSize.s6.v),
                    const Divider(),
                    VerticalSpace(AppSize.s6.v),
                    Row(
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Expanded(
                          flex: 3,
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
            ],
          ),
        ),
      ),
    );
  }
}
