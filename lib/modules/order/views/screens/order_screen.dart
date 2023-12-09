import 'package:ecommerce/config/navigation/navigation.dart';
import 'package:ecommerce/core/resources/resources.dart';
import 'package:ecommerce/core/services/responsive_service.dart';
import 'package:get/get.dart';

import '../../../../config/theme/theme.dart';
import '../../../../core/view/views.dart';
import '../../controller/order_controller.dart';
import 'package:flutter/material.dart';

import '../widgets/shoppingcartcontinueorder_item_widget.dart';

class OrderScreen extends GetWidget<OrderController> {
  const OrderScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: SizedBox(
            width: double.maxFinite,
            child: Column(children: [
              SizedBox(height: 16.v),
              Expanded(
                  child: SingleChildScrollView(
                      child: Padding(
                          padding: EdgeInsets.only(bottom: 5.v),
                          child: Column(children: [
                            _buildShoppingCartContinueOrder(),
                            SizedBox(height: 37.v),
                            _buildAddressCard(),
                            SizedBox(height: 44.v),
                            Align(
                                alignment: Alignment.centerLeft,
                                child: Padding(
                                    padding: EdgeInsets.only(left: 25.h),
                                    child:
                                        Text("msg_choose_payment_method".tr, style: Get.theme.textTheme.titleMedium))),
                            SizedBox(height: 14.v),
                            _buildLanguageButton1(),
                            const Divider(color: AppColors.gray200),
                            _buildLanguageButton(
                                image: AppImages.imgGroup, userCash: "lbl_7878".tr, onTapLanguageButton: () {}),
                            const Divider(color: AppColors.gray200),
                            _buildLanguageButton(
                                image: AppImages.imgGroupSecondarycontainer,
                                userCash: "lbl_cash".tr,
                                onTapLanguageButton: () {}),
                            const Divider(color: AppColors.gray200),
                            _buildLanguageButton(
                                image: AppImages.imgGroupDeepPurpleA100,
                                userCash: "msg_add_new_payment".tr,
                                onTapLanguageButton: () {}),
                            SizedBox(height: 39.v),
                            _buildFrame1(),
                            SizedBox(height: 32.v),
                            _buildNotes(),
                            SizedBox(height: 24.v),
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 24.h),
                                child: _buildFrame(taxesLabel: "lbl_subtotal".tr, priceLabel: "lbl_usd_295".tr)),
                            SizedBox(height: 10.v),
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 24.h),
                                child: _buildFrame(taxesLabel: "lbl_taxes".tr, priceLabel: "lbl_usd_295".tr)),
                            SizedBox(height: 10.v),
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 24.h),
                                child: _buildFrame(taxesLabel: "lbl_delivery_fees".tr, priceLabel: "lbl_usd_295".tr)),
                            SizedBox(height: 10.v),
                            Padding(
                                padding: EdgeInsets.symmetric(horizontal: 24.h),
                                child: _buildFrame(taxesLabel: "lbl_total".tr, priceLabel: "lbl_usd_295".tr))
                          ]))))
            ])),
        bottomNavigationBar: _buildContinuerOrder());
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return MainAppbar(
      title: "lbl_continue_order".tr,
      actions: [
        CustomImage(
          image: AppImages.imgIconTrash,
          margin: EdgeInsets.symmetric(horizontal: 24.h, vertical: 15.v),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildShoppingCartContinueOrder() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: ListView.separated(
        physics: NeverScrollableScrollPhysics(),
        shrinkWrap: true,
        separatorBuilder: (context, index) {
          return Padding(
              padding: EdgeInsets.symmetric(vertical: 6.5.v),
              child: SizedBox(width: 326.h, child: Divider(height: 1.v, thickness: 1.v, color: AppColors.gray100)));
        },
        itemCount: 2,
        itemBuilder: (context, index) => ShoppingcartcontinueorderItemWidget(),
      ),
    );
  }

  /// Section Widget
  Widget _buildAddressCard() {
    return GestureDetector(
        onTap: () {},
        child: Padding(
            padding: EdgeInsets.symmetric(horizontal: 24.h),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(top: 6.v, bottom: 12.v),
                      padding: EdgeInsets.symmetric(horizontal: 2.h, vertical: 1.v),
                      decoration: AppDecoration.fillWhiteA,
                      child: CustomImage(image: AppImages.imgUnion, height: 21.v, width: 19.h)),
                  Padding(
                      padding: EdgeInsets.only(left: 10.h),
                      child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
                        Text("lbl_deliver_to".tr, style: Get.theme.textTheme.bodySmall),
                        SizedBox(height: 6.v),
                        Text("msg4".tr, style: CustomTextStyles.labelLargeBlack900_1)
                      ])),
                  Spacer(),
                  CustomImage(
                      image: AppImages.imgIconChevronLeft,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                      margin: EdgeInsets.only(top: 6.v, bottom: 12.v))
                ])));
  }

  /// Section Widget
  Widget _buildLanguageButton1() {
    return GestureDetector(
        onTap: () {},
        child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 15.v),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CustomImage(
                  image: AppImages.imgLogosVisa,
                  height: 12.v,
                  width: 40.h,
                  margin: EdgeInsets.symmetric(vertical: 3.v)),
              Padding(
                  padding: EdgeInsets.only(left: 16.h, top: 2.v, bottom: 2.v),
                  child: Text("lbl_7878".tr, style: Get.theme.textTheme.bodySmall)),
              Spacer(),
              Container(
                  padding: EdgeInsets.all(3.h),
                  decoration: AppDecoration.outlinePrimary.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
                  child: Container(
                      height: 11.adaptSize,
                      width: 11.adaptSize,
                      decoration: BoxDecoration(
                          color: Get.theme.colorScheme.primary, borderRadius: BorderRadius.circular(5.h))))
            ])));
  }

  /// Section Widget
  Widget _buildPromoCode() {
    return Expanded(
        child: CustomTextFormField(
            controller: controller.promoCodeController,
            hintText: "lbl_promo_code".tr,
            prefix: Container(
                margin: EdgeInsets.fromLTRB(15.h, 10.v, 12.h, 10.v),
                child: CustomImage(image: AppImages.imgFireflyFillTicket, height: 20.adaptSize, width: 20.adaptSize)),
            prefixConstraints: BoxConstraints(maxHeight: 40.v),
            contentPadding: EdgeInsets.only(top: 11.v, right: 30.h, bottom: 11.v)));
  }

  /// Section Widget
  Widget _buildApply() {
    return CustomButton(
        height: 40.v,
        width: 78.h,
        text: "lbl_apply".tr,
        margin: EdgeInsets.only(left: 13.h),
        buttonTextStyle: CustomTextStyles.titleSmallWhiteA700);
  }

  /// Section Widget
  Widget _buildFrame1() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 24.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [_buildPromoCode(), _buildApply()]));
  }

  /// Section Widget
  Widget _buildNotes() {
    return Padding(
        padding: EdgeInsets.only(left: 25.h, right: 24.h),
        child: CustomTextFormField(
            controller: controller.notesController,
            hintText: "lbl_notes".tr,
            textInputAction: TextInputAction.done,
            contentPadding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 11.v)));
  }

  /// Section Widget
  Widget _buildContinuerOrder() {
    return CustomButton(
      margin: EdgeInsets.all(AppPadding.p24).copyWith(top: AppPadding.p0),
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
      onPressed: () => Get.toNamed(Routes.successfulOrderScreen),
    );
  }

  /// Common widget
  Widget _buildLanguageButton({
    required String image,
    required String userCash,
    Function? onTapLanguageButton,
  }) {
    return GestureDetector(
        onTap: () {
          onTapLanguageButton!.call();
        },
        child: Container(
            width: double.maxFinite,
            padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 13.v),
            child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              CustomImage(image: image, height: 22.v, width: 40.h),
              Padding(
                  padding: EdgeInsets.only(left: 16.h, top: 3.v, bottom: 4.v),
                  child: Text(userCash, style: Get.theme.textTheme.bodySmall!.copyWith(color: AppColors.black))),
              Spacer(),
              CustomImage(image: AppImages.imgGroup16, height: 20.adaptSize, width: 20.adaptSize)
            ])));
  }

  /// Common widget
  Widget _buildFrame({
    required String taxesLabel,
    required String priceLabel,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Opacity(
          opacity: 0.6,
          child: Padding(
              padding: EdgeInsets.only(top: 2.v, bottom: 3.v),
              child: Text(taxesLabel,
                  style: CustomTextStyles.labelLargeBlack900.copyWith(color: AppColors.black.withOpacity(0.56))))),
      Text(priceLabel, style: Get.theme.textTheme.titleMedium!.copyWith(color: AppColors.black))
    ]);
  }
}
