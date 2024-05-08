import 'package:ecommerce/core/resources/resources.dart';
import 'package:ecommerce/core/services/responsive_service.dart';
import 'package:ecommerce/core/view/views.dart';
import 'package:ecommerce/modules/product/views/widgets/similar_product_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SimilarProductsComponent extends StatelessWidget {
  const SimilarProductsComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: AppColors.gray100,
      padding: const EdgeInsets.symmetric(vertical: AppPadding.p32),
      child: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppPadding.p24),
            child: Row(
              children: [
                CustomText(
                  AppStrings.msgSimilarProducts.tr,
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontSize: FontSize.s16,
                    fontWeight: FontWeightManager.regular,
                  ),
                ),
                const Spacer(),
                CustomText(
                  AppStrings.lblViewAll.tr,
                  style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontSize: FontSize.s12,
                    color: AppColors.primary,
                    fontWeight: FontWeightManager.bold,
                  ),
                )
              ],
            ),
          ),
          const VerticalSpace(AppSize.s20),
          SizedBox(
            height: AppSize.s225.v,
            child: ListView.separated(
              scrollDirection: Axis.horizontal,
              padding: const EdgeInsets.symmetric(horizontal: AppPadding.p24),
              itemBuilder: (context, index) => SimilarProductItem(),
              separatorBuilder: (context, index) => const HorizontalSpace(AppSize.s12),
              itemCount: 7,
            ),
          )
        ],
      ),
    );
  }
}
