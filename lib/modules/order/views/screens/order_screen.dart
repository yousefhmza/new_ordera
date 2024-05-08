import 'package:ecommerce/config/navigation/navigation.dart';
import 'package:ecommerce/core/resources/resources.dart';
import 'package:ecommerce/core/services/responsive_service.dart';
import 'package:ecommerce/core/utils/alerts.dart';
import 'package:ecommerce/modules/order/views/widgets/order_price_details_row.dart';
import 'package:ecommerce/modules/order/views/widgets/payment_method_widget.dart';
import 'package:get/get.dart';

import '../../../../config/theme/theme.dart';
import '../../../../core/view/views.dart';
import '../../controller/order_controller.dart';
import 'package:flutter/material.dart';

import '../widgets/order_product_item.dart';

class OrderScreen extends GetWidget<OrderController> {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: MainAppbar(
        title: AppStrings.lblContinueOrder.tr,
        actions: [
          CustomIcon.svg(AppImages.imgIconTrash),
        ],
      ),
      body: SafeArea(
        child: SingleChildScrollView(
          padding: const EdgeInsets.symmetric(horizontal: AppPadding.p24, vertical: AppPadding.p16),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              ListView.separated(
                padding: EdgeInsets.zero,
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                separatorBuilder: (context, index) => SizedBox(height: AppSize.s10.v),
                // itemCount: controller.orderBody.products?.length ?? 0,
                itemCount: 2,
                itemBuilder: (context, index) => OrderProductItem(),
              ),
              VerticalSpace(AppSize.s24.v),
              const Divider(height: AppSize.s1, color: AppColors.gray200),
              VerticalSpace(AppSize.s24.v),
              StatefulBuilder(
                builder: (context, setState) => InkWell(
                  onTap: () async {
                    final result = await Get.toNamed(
                      Routes.addressesScreen,
                      arguments: {"from_order_screen": true},
                    );
                    if (result == null) return;
                    // controller.orderBody.copyWith(address: result);
                    setState(() {});
                  },
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      const CustomIcon.svg(AppImages.imgUnion),
                      const HorizontalSpace(AppSize.s10),
                      Expanded(
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            CustomText(AppStrings.lblDeliverTo.tr, style: Get.theme.textTheme.bodySmall),
                            // if (controller.orderBody.address != null)
                              const VerticalSpace(AppSize.s2),
                            // if (controller.orderBody.address != null)
                              CustomText(
                                "controller.orderBody.address!",
                                style: CustomTextStyles.labelLargeBlack900_1,
                              )
                          ],
                        ),
                      ),
                      const HorizontalSpace(AppSize.s8),
                      const CustomIcon.svg(AppImages.imgIconChevronLeft)
                    ],
                  ),
                ),
              ),
              VerticalSpace(AppSize.s24.v),
              const Divider(height: AppSize.s1, color: AppColors.gray200),
              VerticalSpace(AppSize.s24.v),
              CustomText(AppStrings.msgChoosePaymentMethod.tr, style: Get.theme.textTheme.titleMedium),
              SizedBox(height: AppSize.s16.v),
              PaymentMethodWidget(image: AppImages.imgLogosVisa, text: "lbl_7878".tr, verticalPadding: false),
              const Divider(color: AppColors.gray200, height: AppSize.s1),
              PaymentMethodWidget(image: AppImages.imgGroup, text: "lbl_7878".tr),
              const Divider(color: AppColors.gray200, height: AppSize.s1),
              PaymentMethodWidget(image: AppImages.imgGroupSecondarycontainer, text: "lbl_cash".tr),
              const Divider(color: AppColors.gray200, height: AppSize.s1),
              PaymentMethodWidget(image: AppImages.imgGroupDeepPurpleA100, text: "msg_add_new_payment".tr),
              const VerticalSpace(AppSize.s20),
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Expanded(
                    child: CustomTextField(
                      hintText: AppStrings.lblPromoCode.tr,
                      prefix: const CustomIcon.svg(AppImages.imgFireflyFillTicket),
                    ),
                  ),
                  const HorizontalSpace(AppSize.s12),
                  CustomButton(
                    padding: const EdgeInsets.symmetric(horizontal: AppPadding.p28, vertical: AppPadding.p12),
                    text: AppStrings.lblApply.tr,
                    buttonTextStyle: CustomTextStyles.titleSmallWhiteA700,
                    onPressed: () {},
                  ),
                ],
              ),
              const VerticalSpace(AppSize.s20),
              CustomTextField(
                hintText: AppStrings.lblNotes.tr,
                minLines: 1,
                maxLines: 5,
                textInputAction: TextInputAction.done,
              ),
              const VerticalSpace(AppSize.s20),
              OrderPriceDetailsRow(
                title: AppStrings.lblSubtotal.tr,
                price: "controller.orderBody.subtotal!.toStringAsFixed(2)",
              ),
              const VerticalSpace(AppSize.s10),
              OrderPriceDetailsRow(title: AppStrings.lblTaxes.tr, price: "0"),
              const VerticalSpace(AppSize.s10),
              OrderPriceDetailsRow(title: AppStrings.lblDeliveryFees.tr, price: "0"),
              const VerticalSpace(AppSize.s10),
              OrderPriceDetailsRow(
                title: AppStrings.lblTotal.tr,
                price: "controller.orderBody.subtotal!.toStringAsFixed(2)",
              ),
              const VerticalSpace(AppSize.s16),
              CustomButton(
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    CustomText(
                      AppStrings.lblContinueOrder.tr,
                      style: Theme.of(context).textTheme.titleSmall?.copyWith(
                            color: AppColors.white,
                            fontWeight: FontWeightManager.bold,
                          ),
                    ),
                    const CustomIcon.svg(AppImages.imgArrowright)
                  ],
                ),
                onPressed: () {
                  // final String? errorMessage = controller.orderBody.validate();
                  // if (errorMessage != null) {
                  //   Alerts.showToast(errorMessage);
                  //   return;
                  // }
                  // controller.createOrder();
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}
