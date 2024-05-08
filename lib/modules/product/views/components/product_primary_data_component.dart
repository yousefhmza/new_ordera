import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/resources/resources.dart';
import '../../../../core/view/views.dart';

class ProductPrimaryDataComponent extends StatelessWidget {
  const ProductPrimaryDataComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: AppPadding.p20),
      child: Column(
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              Expanded(
                flex: 3,
                child: CustomText(
                  "controller.product.value!.name",
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    height: 1,
                    fontWeight: FontWeightManager.bold,
                    fontSize: FontSize.s32,
                  ),
                ),
              ),
              const HorizontalSpace(AppSize.s8),
              Expanded(
                flex: 1,
                child: Column(
                  children: [
                    CustomText(
                      "${AppStrings.usd.tr} ${"controller.product.value!.price"}",
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                        fontWeight: FontWeightManager.bold,
                        fontSize: FontSize.s16,
                        color: AppColors.primary,
                      ),
                    ),
                    const VerticalSpace(AppSize.s4),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      children: [
                        const CustomIcon.svg(AppImages.imgStar, size: AppSize.s20),
                        const HorizontalSpace(AppSize.s4),
                        CustomText(
                          "controller.product.value!.averageRating",
                          style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            fontWeight: FontWeightManager.semiBold,
                          ),
                        ),
                      ],
                    )
                  ],
                ),
              ),
              CustomIcon.svg(AppImages.imgFavoriteLight),
            ],
          ),
          const VerticalSpace(AppSize.s16),
          Row(
            children: [
              CustomText(
                AppStrings.lblColors.tr,
                style: Theme.of(context).textTheme.titleSmall?.copyWith(fontSize: FontSize.s16),
              ),
              const Spacer(),
              ...List.generate(
                3,
                    (index) => Padding(
                  padding: EdgeInsetsDirectional.only(start: AppPadding.p8),
                  child: CircleAvatar(radius: AppSize.s8, backgroundColor: AppColors.black),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }
}
