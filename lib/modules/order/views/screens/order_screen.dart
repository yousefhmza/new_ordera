import 'package:ecommerce/core/resources/resources.dart';
import 'package:ecommerce/core/services/responsive_service.dart';
import 'package:ecommerce/core/utils/alerts.dart';
import 'package:ecommerce/modules/order/views/components/order_address_component.dart';
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
      appBar: MainAppbar(title: AppStrings.lblContinueOrder.tr),
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
                itemCount: controller.orderBody.products.length,
                itemBuilder: (context, index) => OrderProductItem(controller.orderBody.products[index]),
              ),
              VerticalSpace(AppSize.s24.v),
              const Divider(height: AppSize.s1, color: AppColors.gray200),
              VerticalSpace(AppSize.s24.v),
              OrderAddressComponent(),
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
                onChanged: (value) => controller.orderBody.copyWith(message: value),
                textInputAction: TextInputAction.done,
              ),
              const VerticalSpace(AppSize.s20),
              Obx(
                () => controller.isFetchingShippingCost.value
                    ? const LoadingSpinner()
                    : controller.shippingCost.value == null
                        ? const SizedBox.shrink()
                        : Column(
                            children: [
                              OrderPriceDetailsRow(
                                title: AppStrings.lblSubtotal.tr,
                                price: controller.subtotal.toStringAsFixed(2),
                              ),
                              const VerticalSpace(AppSize.s10),
                              OrderPriceDetailsRow(title: AppStrings.lblTaxes.tr, price: "0"),
                              const VerticalSpace(AppSize.s10),
                              OrderPriceDetailsRow(
                                title: AppStrings.lblDeliveryFees.tr,
                                price: controller.shippingCost.value!.defaultShippingOptions.options.cost
                                    .toStringAsFixed(2),
                              ),
                              const VerticalSpace(AppSize.s10),
                              OrderPriceDetailsRow(
                                title: AppStrings.lblTotal.tr,
                                price: (controller.shippingCost.value!.defaultShippingOptions.options.cost +
                                        controller.subtotal)
                                    .toStringAsFixed(2),
                              ),
                              const VerticalSpace(AppSize.s16),
                              Obx(
                                () => CustomButton(
                                  isLoading: controller.isLoading.value,
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
                                    final String? errorMessage = controller.orderBody.validate();
                                    if (errorMessage != null) {
                                      Alerts.showToast(errorMessage);
                                      return;
                                    }
                                    controller.createOrder();
                                  },
                                ),
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
