import 'package:ecommerce/config/navigation/navigation.dart';
import 'package:ecommerce/core/resources/resources.dart';
import 'package:ecommerce/core/services/responsive_service.dart';
import 'package:ecommerce/core/view/views.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../config/theme/theme.dart';
import '../../controller/shopping_cart_controller.dart';
import '../widgets/cart_item.dart';

class CartScreen extends GetWidget<CartController> {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) => controller.getCartProducts());
    return Column(
      children: [
        MainAppbar(
          title: "lbl_cart".tr,
          showDefaultBackButton: false,
          actions: [
            InkWell(
              onTap: () {
                if (controller.cartProductsList.isEmpty) return;
                showDialog(
                  context: context,
                  builder: (context) => ConfirmationDialog(
                    title: AppStrings.msgSureClearingCart.tr,
                    onYes: () => controller.clearCart(),
                  ),
                );
              },
              child: CustomImage(image: AppImages.imgIconTrash),
            ),
          ],
        ),
        Expanded(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppPadding.p24),
            child: CustomScrollView(
              slivers: [
                const VerticalSpace.sliver(AppSize.s16),
                Obx(
                  () => SliverList.separated(
                    key: UniqueKey(),
                    separatorBuilder: (context, index) => SizedBox(height: AppSize.s10.v),
                    itemCount: controller.cartProductsList.length,
                    itemBuilder: (context, index) => CartItem(controller.cartProductsList[index]),
                  ),
                ),
                SliverFillRemaining(
                  hasScrollBody: false,
                  child: Column(
                    children: [
                      const Spacer(),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Text("lbl_total_products".tr, style: CustomTextStyles.labelLargeBlack900),
                          Obx(
                            () => Text(
                              "${AppStrings.usd.tr} ${controller.totalPrice.value.toStringAsFixed(2)}",
                              style: Get.theme.textTheme.titleMedium,
                            ),
                          ),
                        ],
                      ),
                      Obx(
                        () => controller.cartProductsList.isEmpty
                            ? const SizedBox.shrink()
                            : CustomButton(
                                margin: EdgeInsets.only(top: 23.v),
                                child: Row(
                                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                                  children: [
                                    CustomText(
                                      "lbl_continuer_order".tr,
                                      style: TextStyle(
                                        color: AppColors.white,
                                        fontWeight: FontWeightManager.bold,
                                        fontSize: FontSize.s14,
                                      ),
                                    ),
                                    CustomImage(
                                        image: AppImages.imgArrowright, height: 25.adaptSize, width: 25.adaptSize)
                                  ],
                                ),
                                onPressed: () async {
                                  final orderedSuccessfully = await Get.toNamed(
                                    Routes.orderScreen,
                                    arguments: {
                                      "products": controller.cartProductsList,
                                      "subtotal": controller.totalPrice.value
                                    },
                                  );
                                  if (orderedSuccessfully != null && orderedSuccessfully) {
                                    await controller.clearCart();
                                    Get.toNamed(Routes.successfulOrderScreen);
                                  }
                                },
                              ),
                      ),
                      SizedBox(height: 23.v),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
