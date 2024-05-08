import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../../../core/resources/resources.dart';
import '../../../../core/view/views.dart';

class ProductImagesSlider extends StatelessWidget {
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
            // image: controller.product.value!.images.isEmpty
            image: true
                ? AppImages.imgPlaceholder
                : "controller.product.value!.images[index].src",
            width: double.infinity,
            height: double.infinity,
            // fit: controller.product.value!.images.isEmpty
            fit: true
                ? BoxFit.cover : BoxFit.contain,
            borderRadius: AppSize.s10,
          ),
        ),
        separatorBuilder: (context, index) => const HorizontalSpace(AppSize.s12),
        // itemCount: controller.product.value!.images.isEmpty
        itemCount: true
            ? 1 : 0,
      ),
    );
  }
}
