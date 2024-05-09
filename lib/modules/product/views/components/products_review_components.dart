import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/resources/resources.dart';
import '../../../../core/view/views.dart';
import '../../controller/product_detail_controller.dart';
import '../widgets/review_item.dart';

class ProductReviewsComponent extends GetWidget<ProductDetailsController> {
  const ProductReviewsComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: AppPadding.p20),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            children: [
              CustomText(
                "${AppStrings.lblReviews102.tr} (${controller.product.value!.product.reviewsCount})",
                style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  fontSize: FontSize.s16,
                  fontWeight: FontWeightManager.regular,
                ),
              ),
              const Spacer(),
              CustomButton(
                height: AppSize.s40,
                isOutlined: true,
                textColor: AppColors.primary,
                text: AppStrings.lblRateProduct.tr,
                onPressed: () {},
              )
            ],
          ),
          const VerticalSpace(AppSize.s16),
          ReviewItem(),
          const VerticalSpace(AppSize.s16),
          ReviewItem(),
          const VerticalSpace(AppSize.s16),
          Center(
            child: CustomText(
              AppStrings.msgViewAllReviews.tr,
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                color: AppColors.primary,
                decoration: TextDecoration.underline,
                decorationColor: AppColors.primary,
              ),
            ),
          )
        ],
      ),
    );
  }
}
