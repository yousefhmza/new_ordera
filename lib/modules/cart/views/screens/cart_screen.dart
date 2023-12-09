import 'package:ecommerce/config/navigation/navigation.dart';
import 'package:ecommerce/core/resources/resources.dart';
import 'package:ecommerce/core/services/responsive_service.dart';
import 'package:ecommerce/core/view/views.dart';
import 'package:ecommerce/modules/cart/controller/shopping_cart_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../config/theme/theme.dart';
import '../widgets/cart_item.dart';

class CartScreen extends GetWidget<CartController> {
  const CartScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MainAppbar(
          title: "lbl_cart".tr,
          showDefaultBackButton: false,
          actions: [
            CustomImage(
              image: AppImages.imgIconTrash,
              margin: EdgeInsets.symmetric(horizontal: 24.h, vertical: 15.v),
            ),
          ],
        ),
        Expanded(
          child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 16.v),
            child: Column(
              children: [
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) => SizedBox(height: 11.v),
                    itemCount: 2,
                    itemBuilder: (context, index) => CartItem(),
                  ),
                ),
                Spacer(),
                Padding(
                  padding: EdgeInsets.only(left: 1.h),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      Opacity(
                        opacity: 0.6,
                        child: Padding(
                          padding: EdgeInsets.only(top: 2.v, bottom: 3.v),
                          child: Text("lbl_total_products".tr, style: CustomTextStyles.labelLargeBlack900),
                        ),
                      ),
                      Text("lbl_usd_295".tr, style: Get.theme.textTheme.titleMedium)
                    ],
                  ),
                ),
                SizedBox(height: 23.v),
                CustomButton(
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
                      CustomImage(image: AppImages.imgArrowright, height: 25.adaptSize, width: 25.adaptSize)
                    ],
                  ),
                  onPressed: () => Get.toNamed(Routes.orderScreen),
                ),
                SizedBox(height: 16.v)
              ],
            ),
          ),
        ),
      ],
    );
  }
}
