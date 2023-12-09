import 'package:ecommerce/core/services/responsive_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../config/navigation/navigation.dart';
import '../../../../../config/theme/theme.dart';
import '../../../../../core/resources/resources.dart';
import '../../../../../core/view/views.dart';

class ProductItem3 extends StatelessWidget {
  const ProductItem3({super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.topCenter,
      child: GestureDetector(
        onTap: () => Get.toNamed(Routes.productDetailScreen),
        child: Container(
          width: 300.h,
          height: 110.v,
          margin: const EdgeInsets.only(top: 8),
          padding: const EdgeInsets.all(AppPadding.p8),
          decoration: BoxDecoration(
            color: AppColors.white,
            borderRadius: BorderRadius.circular(AppSize.s16),
            boxShadow: [
              BoxShadow(
                color: AppColors.black.withOpacity(0.07),
                blurRadius: 10,
                offset: const Offset(0, 2),
              )
            ],
          ),
          child: Row(
            children: [
              AspectRatio(
                aspectRatio: 1,
                child: const CustomImage(
                  image: AppImages.pizza,
                  height: double.infinity,
                  borderRadius: AppSize.s16,
                ),
              ),
              HorizontalSpace(AppSize.s8),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    VerticalSpace(AppSize.s6.v),
                    Row(
                      children: [
                        CustomText(
                          "Spaghetti",
                          textAlign: TextAlign.start,
                          maxLines: 1,
                          autoSized: true,
                          style: Get.theme.textTheme.titleSmall?.copyWith(
                            color: AppColors.gray500,
                            fontSize: FontSize.s12,
                          ),
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
                    CustomText(
                      AppStrings.msgNikeRunningShoes.tr,
                      maxLines: 1,
                      autoSized: true,
                      style: Get.theme.textTheme.titleMedium?.copyWith(fontSize: FontSize.s14),
                    ),
                    Row(
                      children: [
                        Expanded(
                          child: CustomText(
                            "\$12.30",
                            style: Get.theme.textTheme.titleMedium?.copyWith(fontSize: FontSize.s16.adaptSize),
                          ),
                        ),
                        Container(
                          padding: const EdgeInsets.all(AppPadding.p4),
                          decoration: const BoxDecoration(shape: BoxShape.circle, color: AppColors.black),
                          child: const CustomImage(
                            image: AppImages.imgAddButton,
                            width: AppSize.s20,
                            height: AppSize.s20,
                          ),
                        )
                      ],
                    ),
                    VerticalSpace(AppSize.s6.v),

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
