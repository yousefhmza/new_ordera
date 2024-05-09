import 'package:ecommerce/modules/product/views/components/similar_products_component.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/resources/resources.dart';
import '../../../../core/view/views.dart';
import '../../controller/product_detail_controller.dart';
import '../components/product_images_slider.dart';
import '../components/product_primary_data_component.dart';
import '../components/products_review_components.dart';

class ProductDetailsScreen extends GetWidget<ProductDetailsController> {
  ProductDetailsScreen({super.key});

  // final CartController cartController = Get.put(sl<CartController>());

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppbar(
        title: "",
        actions: [CustomIcon.svg(AppImages.imgIconCart)]
      ),
      body: Obx(
        () => controller.isLoadingProduct.value
            ? const LoadingSpinner()
            : controller.product.value == null
                ? const SizedBox.shrink()
                : SingleChildScrollView(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        const VerticalSpace(AppSize.s16),
                        const ProductImagesSlider(),
                        const VerticalSpace(AppSize.s32),
                        const ProductPrimaryDataComponent(),
                        const VerticalSpace(AppSize.s24),
                        const Divider(height: AppSize.s1, indent: AppPadding.p20, endIndent: AppPadding.p20),
                        const VerticalSpace(AppSize.s24),
                        Padding(
                          padding: EdgeInsets.symmetric(horizontal: AppPadding.p20),
                          child: CustomText(
                            AppStrings.lblProductDetails.tr,
                            style: Theme.of(context).textTheme.titleSmall?.copyWith(fontSize: FontSize.s16),
                          ),
                        ),
                        const VerticalSpace(AppSize.s8),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: AppPadding.p20),
                          child: CustomText(
                            controller.product.value!.product.description,
                            style: Theme.of(context)
                                .textTheme
                                .titleSmall
                                ?.copyWith(fontSize: FontSize.s12, color: AppColors.gray600),
                          ),
                        ),
                        const VerticalSpace(AppSize.s24),
                        const Divider(height: AppSize.s1, indent: AppPadding.p20, endIndent: AppPadding.p20),
                        const VerticalSpace(AppSize.s24),
                        ProductReviewsComponent(),
                        const VerticalSpace(AppSize.s64),
                        SimilarProductsComponent(),
                        const VerticalSpace(AppSize.s82),
                      ],
                    ),
                  ),
      ),
      bottomSheet: Obx(
        () => controller.product.value == null
            ? const SizedBox.shrink()
            : Container(
                color: AppColors.white,
                padding: const EdgeInsets.all(AppPadding.p24),
                child: CustomButton(
                  height: AppSize.s40,
                  text: AppStrings.lblAddToCart.tr,
                  onPressed: () {
                    // final CartProduct cartProduct = CartProduct(
                    //   id: 0,
                    //   productId: controller.product.value!.id,
                    //   image: controller.product.value!.images.isEmpty ? "" : controller.product.value!.images[0].src,
                    //   name: controller.product.value!.name,
                    //   price: controller.product.value!.price,
                    //   quantity: 1,
                    // );
                    // cartController.addProduct(cartProduct);
                  },
                ),
              ),
      ),
    );
  }
}
