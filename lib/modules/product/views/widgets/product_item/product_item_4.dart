import 'package:ecommerce/core/services/responsive_service.dart';
import 'package:ecommerce/modules/product/models/responses/in_list_product_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../config/navigation/navigation.dart';
import '../../../../../config/theme/theme.dart';
import '../../../../../core/resources/resources.dart';
import '../../../../../core/view/views.dart';
import '../../../models/responses/product_model.dart';

class ProductItem4 extends StatelessWidget {
  final InListProductModel product;
  final bool dynamicDimensions;

  const ProductItem4(this.product, {this.dynamicDimensions = false, super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.topCenter,
      child: GestureDetector(
        onTap: () => Get.toNamed(Routes.productDetailsScreen, arguments: {"id": product.prodId}),
        child: Container(
          width: dynamicDimensions ? double.infinity : 300.h,
          height: dynamicDimensions ? double.infinity : 110.v,
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
                child: CustomImage(image: product.imgUrl, height: double.infinity, borderRadius: AppSize.s16),
              ),
              const HorizontalSpace(AppSize.s8),
              Expanded(
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(
                      children: [
                        Container(
                          padding: const EdgeInsets.all(AppPadding.p4),
                          decoration: const BoxDecoration(color: AppColors.black),
                          child: CustomText(
                            product.categoryId.toString(),
                            textAlign: TextAlign.start,
                            maxLines: 1,
                            autoSized: true,
                            style: Get.theme.textTheme.titleSmall?.copyWith(
                              color: AppColors.white,
                              fontSize: FontSize.s12,
                            ),
                          ),
                        ),
                        const Spacer(),
                        CustomText(
                          "\$${product.price}",
                          style: Get.theme.textTheme.titleMedium?.copyWith(fontSize: FontSize.s14.adaptSize),
                        )
                      ],
                    ),
                    CustomText(
                      product.title,
                      maxLines: 1,
                      autoSized: true,
                      style: Get.theme.textTheme.titleMedium?.copyWith(fontSize: FontSize.s14),
                    ),
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
