import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../../../core/resources/resources.dart';
import '../../../../core/view/views.dart';
import '../../controller/product_detail_controller.dart';

class ProductImagesSlider extends GetWidget<ProductDetailsController> {
  const ProductImagesSlider({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: AppSize.s350,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        padding: const EdgeInsets.symmetric(horizontal: AppPadding.p20),
        itemBuilder: (context, index) => Container(
          width: AppSize.s250,
          height: AppSize.s350,
          padding: const EdgeInsets.all(AppPadding.p8),
          decoration: BoxDecoration(
            color: AppColors.gray10002,
            borderRadius: BorderRadius.circular(AppSize.s10),
          ),
          child: CustomImage(
            image: controller.product.value!.product.galleryImages.isEmpty
                ? AppImages.imgPlaceholder
                : controller.product.value!.product.galleryImages[index],
            width: double.infinity,
            height: double.infinity,
            fit: controller.product.value!.product.galleryImages.isEmpty ? BoxFit.cover : BoxFit.contain,
            borderRadius: AppSize.s10,
          ),
        ),
        separatorBuilder: (context, index) => const HorizontalSpace(AppSize.s12),
        itemCount: controller.product.value!.product.galleryImages.isEmpty
            ? 1
            : controller.product.value!.product.galleryImages.length,
      ),
    );
  }
}
