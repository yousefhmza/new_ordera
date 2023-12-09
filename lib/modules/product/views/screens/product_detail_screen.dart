import 'package:ecommerce/core/services/responsive_service.dart';
import 'package:ecommerce/core/view/views.dart';
import 'package:get/get.dart';

import '../../../../config/theme/theme.dart';
import '../../../../core/resources/resources.dart';
import '../../controller/product_detail_controller.dart';
import 'package:flutter/material.dart';

import '../widgets/productdetailoverview_item_widget.dart';

class ProductDetailsScreen extends GetWidget<ProductDetailsController> {
  const ProductDetailsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppbar(
        actions: [
          InkWell(
            onTap: () {},
            child: Center(
              child: CustomImage(
                image: AppImages.imgIconCart,
                height: 24.adaptSize,
                width: 24.adaptSize,
                fit: BoxFit.contain,
              ),
            ),
          )
        ],
        title: '',
      ),
      body: SizedBox(
          width: double.maxFinite,
          child: Column(children: [
            SizedBox(height: 18.v),
            Expanded(
                child: SingleChildScrollView(
                    child: Padding(
                        padding: EdgeInsets.only(bottom: 5.v),
                        child: Column(children: [
                          _buildImagesHorizontal(),
                          SizedBox(height: 24.v),
                          _buildFrame(),
                          SizedBox(height: 19.v),
                          _buildChooseColor(),
                          SizedBox(height: 23.v),
                          Divider(indent: 20.h, endIndent: 24.h),
                          SizedBox(height: 23.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 20.h),
                                  child: Text("lbl_product_details".tr, style: CustomTextStyles.titleMediumMedium))),
                          SizedBox(height: 18.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  width: 322.h,
                                  margin: EdgeInsets.only(left: 20.h, right: 32.h),
                                  child: Text("msg2".tr,
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      style: CustomTextStyles.labelLargeGray600.copyWith(height: 1.67)))),
                          SizedBox(height: 21.v),
                          Divider(indent: 20.h, endIndent: 24.h),
                          SizedBox(height: 13.v),
                          _buildSellingBy(),
                          SizedBox(height: 14.v),
                          Divider(indent: 20.h, endIndent: 24.h),
                          SizedBox(height: 15.v),
                          _buildTen(),
                          SizedBox(height: 21.v),
                          _buildFrameNinetyFive(),
                          SizedBox(height: 17.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  width: 265.h,
                                  margin: EdgeInsets.only(left: 24.h, right: 85.h),
                                  child: Text("msg2".tr,
                                      maxLines: 4,
                                      overflow: TextOverflow.ellipsis,
                                      style: CustomTextStyles.labelLargeBlack900Medium.copyWith(height: 1.67)))),
                          SizedBox(height: 14.v),
                          _buildFrameNinetyFour(),
                          SizedBox(height: 17.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Container(
                                  width: 265.h,
                                  margin: EdgeInsets.only(left: 24.h, right: 85.h),
                                  child: Text("msg3".tr,
                                      maxLines: 3,
                                      overflow: TextOverflow.ellipsis,
                                      style: CustomTextStyles.labelLargeBlack900Medium.copyWith(height: 1.67)))),
                          SizedBox(height: 27.v),
                          Text("msg_view_all_reviews".tr, style: CustomTextStyles.titleSmallPrimary_1),
                          SizedBox(height: 62.v),
                          _buildTwo()
                        ]))))
          ])),
      bottomNavigationBar: _buildAddToCart(),
    );
  }

  /// Section Widget
  Widget _buildImagesHorizontal() {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(left: 20.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              height: 391.v,
              width: 285.h,
              padding: EdgeInsets.symmetric(horizontal: 19.h, vertical: 52.v),
              decoration: AppDecoration.fillGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
              child: CustomImage(image: AppImages.imgImage6, height: 285.v, width: 247.h),
            ),
            CustomImage(
              image: AppImages.imgImage,
              height: 391.v,
              width: 50.h,
              borderRadius: 10.h,
              margin: EdgeInsets.only(left: 20.h),
            )
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 22.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          SizedBox(
              width: 183.h,
              child: Text("msg_headphone_tma".tr,
                  maxLines: 2,
                  overflow: TextOverflow.ellipsis,
                  style: Get.theme.textTheme.headlineLarge!.copyWith(height: 1.25))),
          Padding(
              padding: EdgeInsets.only(left: 11.h, top: 13.v, bottom: 13.v),
              child: Column(children: [
                Text("lbl_usd_350".tr, style: CustomTextStyles.titleMediumPrimary),
                SizedBox(height: 16.v),
                Row(mainAxisAlignment: MainAxisAlignment.center, children: [
                  CustomImage(image: AppImages.imgStar, height: 16.adaptSize, width: 16.adaptSize),
                  Padding(
                      padding: EdgeInsets.only(left: 3.h),
                      child: Text("lbl_4_6".tr, style: CustomTextStyles.titleSmallSemiBold))
                ])
              ])),
          Padding(
              padding: EdgeInsets.only(left: 16.h),
              child: SizedBox(height: 80.v, child: VerticalDivider(width: 1.h, thickness: 1.v))),
          CustomImage(
              image: AppImages.imgIconFavoriteLight,
              height: 32.adaptSize,
              width: 32.adaptSize,
              margin: EdgeInsets.only(left: 16.h, top: 24.v, bottom: 24.v))
        ]));
  }

  /// Section Widget
  Widget _buildChooseColor() {
    return Padding(
        padding: EdgeInsets.only(left: 20.h, right: 24.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Text("lbl_colors".tr, style: CustomTextStyles.titleMediumMedium),
          CustomImage(image: AppImages.imgFrame115, height: 16.v, width: 112.h, margin: EdgeInsets.only(bottom: 2.v))
        ]));
  }

  /// Section Widget
  Widget _buildSellingBy() {
    return Padding(
        padding: EdgeInsets.only(left: 20.h, right: 24.h),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 10.v, bottom: 9.v),
              child: Text("lbl_seller".tr, style: CustomTextStyles.titleMediumMedium)),
          CustomImage(image: AppImages.imgSimpleIconsSony, height: 40.adaptSize, width: 40.adaptSize, onTap: () {})
        ]));
  }

  /// Section Widget
  Widget _buildTen() {
    return Padding(
      padding: EdgeInsets.only(left: 20.h, right: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Padding(
              padding: EdgeInsets.only(top: 8.v, bottom: 7.v),
              child: Text("lbl_reviews_102".tr, style: Get.theme.textTheme.bodyLarge)),
          CustomButton(
              isOutlined: true,
              textColor: AppColors.primary,
              height: 36.v,
              width: 126.h,
              text: "lbl_rate_product".tr,
              buttonTextStyle: CustomTextStyles.labelLargeSemiBold)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameNinetyFive() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImage(
            image: AppImages.imgEllipse10,
            height: 40.adaptSize,
            width: 40.adaptSize,
            borderRadius: 20.h,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 13.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildFrameNinetyTwo(userName: "lbl_mohamed".tr, duration: "lbl_1_month_ago".tr),
                  SizedBox(height: 3.v),
                  CustomRatingBar(initialRating: 0)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameNinetyFour() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImage(
            image: AppImages.imgEllipse10,
            height: 40.adaptSize,
            width: 40.adaptSize,
            borderRadius: 20.h,
          ),
          Expanded(
            child: Padding(
              padding: EdgeInsets.only(left: 13.h),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildFrameNinetyTwo(userName: "lbl_mohamed".tr, duration: "lbl_1_month_ago".tr),
                  SizedBox(height: 3.v),
                  CustomRatingBar(initialRating: 0)
                ],
              ),
            ),
          )
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildTwo() {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 28.v),
      decoration: AppDecoration.fillGray,
      child: Column(
        children: [
          Padding(
              padding: EdgeInsets.symmetric(horizontal: 4.h),
              child: Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
                Text("msg_similar_products".tr, style: Get.theme.textTheme.bodyLarge),
                Padding(
                    padding: EdgeInsets.only(top: 3.v),
                    child: Text("lbl_view_all".tr,
                        style: Get.theme.textTheme.labelLarge!.copyWith(decoration: TextDecoration.underline)))
              ])),
          SizedBox(height: 19.v),
          SizedBox(
            height: 213.v,
            child: ListView.separated(
              padding: EdgeInsets.only(right: 10.h),
              scrollDirection: Axis.horizontal,
              separatorBuilder: (context, index) {
                return SizedBox(width: 15.h);
              },
              itemCount: 4,
              itemBuilder: (context, index) => ProductdetailoverviewItemWidget(),
            ),
          ),
          SizedBox(height: 9.v)
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildAddToCart() {
    return CustomButton(
      text: "lbl_add_to_cart".tr,
      margin: EdgeInsets.only(left: 25.h, right: 24.h, bottom: 30.v),
      onPressed: () {},
      height: AppSize.s40.v,
    );
  }

  /// Common widget
  Widget _buildFrameNinetyTwo({
    required String userName,
    required String duration,
  }) {
    return Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
      Text(userName, style: Get.theme.textTheme.bodyLarge!.copyWith(color: AppColors.black)),
      Padding(
          padding: EdgeInsets.only(top: 3.v),
          child: Text(duration, style: CustomTextStyles.bodySmallGray60001.copyWith(color: AppColors.gray60001)))
    ]);
  }
}
