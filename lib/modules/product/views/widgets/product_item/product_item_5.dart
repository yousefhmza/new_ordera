import 'package:ecommerce/config/navigation/navigation.dart';
import 'package:ecommerce/core/resources/resources.dart';
import 'package:ecommerce/core/services/responsive_service.dart';
import 'package:ecommerce/modules/product/models/responses/in_list_product_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/view/views.dart';
import '../../../models/responses/product_model.dart';

class ProductItem5 extends StatelessWidget {
  final InListProductModel product;
  final bool dynamicDimensions;

  const ProductItem5(this.product, {this.dynamicDimensions = false, super.key});

  @override
  Widget build(BuildContext context) {
    return Align(
      alignment: AlignmentDirectional.topCenter,
      child: GestureDetector(
        onTap: () => Get.toNamed(Routes.productDetailsScreen, arguments: {"id": product.prodId}),
        child: Container(
          width:dynamicDimensions ? double.infinity :  190.h,
          height:dynamicDimensions ? double.infinity :  250.v,
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
              Expanded(
                child: Stack(
                  children: [
                    CustomImage(
                      image: product.imgUrl,
                      width: double.infinity,
                      height: double.infinity,
                      borderRadius: AppSize.s14,
                    ),
                    PositionedDirectional(
                      top: AppPadding.p12,
                      end: AppPadding.p12,
                      child: Container(
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
                    ),
                  ],
                ),
              ),
              VerticalSpace(AppSize.s8.v),
              CustomText(
                product.title,
                maxLines: 1,
                autoSized: true,
                style: Get.theme.textTheme.titleMedium?.copyWith(color: AppColors.primary, fontSize: FontSize.s14),
              ),
              VerticalSpace(AppSize.s4.v),
              CustomText(
                product.vendorName,
                textAlign: TextAlign.start,
                maxLines: 1,
                autoSized: true,
                style: Get.theme.textTheme.titleSmall?.copyWith(color: AppColors.gray400, fontSize: FontSize.s10),
              ),
              VerticalSpace(AppSize.s4.v),
              Row(
                children: [
                  Expanded(
                    child: CustomText("\$${product.price}", style: Get.theme.textTheme.titleMedium),
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
      ),
    );
  }
}
