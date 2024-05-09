import 'package:ecommerce/core/resources/resources.dart';
import 'package:ecommerce/core/services/responsive_service.dart';
import 'package:ecommerce/core/view/views.dart';
import 'package:ecommerce/modules/product/models/responses/in_list_product_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';


class SimilarProductItem extends StatelessWidget {
  final InListProductModel product;

  const SimilarProductItem(this.product, {super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSize.s150.h,
      height: AppSize.s225.v,
      padding: const EdgeInsets.all(AppPadding.p12),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(AppSize.s16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(child: Center(child: CustomImage(image: product.imgUrl, fit: BoxFit.contain))),
          const VerticalSpace(AppSize.s20),
          CustomText(product.title),
          const VerticalSpace(AppSize.s4),
          CustomText(
            "${AppStrings.usd.tr} ${product.discountPrice.toStringAsFixed(1)}",
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
                  fontWeight: FontWeightManager.bold,
                  fontSize: FontSize.s12,
                ),
          ),
        ],
      ),
    );
  }
}
