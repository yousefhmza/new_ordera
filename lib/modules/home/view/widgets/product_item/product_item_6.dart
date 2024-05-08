import 'package:ecommerce/config/navigation/navigation.dart';
import 'package:ecommerce/core/resources/resources.dart';
import 'package:ecommerce/core/services/responsive_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../config/theme/theme.dart';
import '../../../../../core/view/views.dart';

class ProductItem6 extends StatelessWidget {
  const ProductItem6({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.topCenter,
      child: GestureDetector(
        onTap: () => Get.toNamed(Routes.productDetailsScreen),
        child: Container(
          width: 210.h,
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
                  alignment: AlignmentDirectional.topEnd,
                  children: [
                    const CustomImage(
                      image: AppImages.pizza,
                      width: double.infinity,
                      height: double.infinity,
                    ),
                    Container(
                      margin: const EdgeInsets.all(AppPadding.p12),
                      padding: const EdgeInsets.all(AppPadding.p6),
                      decoration: BoxDecoration(
                        shape: BoxShape.circle,
                        color: AppColors.white.withOpacity(0.5),
                      ),
                      child: const CustomImage(
                        image: AppImages.imgFavoriteLight,
                        width: AppSize.s24,
                        height: AppSize.s24,
                        color: AppColors.white,
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
                            "Pizza",
                            maxLines: 1,
                            autoSized: true,
                            style: Get.theme.textTheme.titleMedium
                                ?.copyWith(color: AppColors.black, fontSize: FontSize.s14.adaptSize),
                          ),
                        ),
                       const  HorizontalSpace(AppSize.s8),
                        CustomText(
                          "\$12.30",
                          style: Get.theme.textTheme.titleMedium?.copyWith(fontSize: FontSize.s18.adaptSize),
                        ),
                      ],
                    ),
                    VerticalSpace(AppSize.s4.v),
                    VerticalSpace(AppSize.s6.v),
                    CustomButton(
                      padding: const EdgeInsets.all(AppPadding.p6),
                      text: AppStrings.lblAddToCart.tr,
                      color: AppColors.black,
                      onPressed: () {},
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
