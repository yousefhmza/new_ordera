import 'package:ecommerce/core/resources/resources.dart';
import 'package:ecommerce/core/services/responsive_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../config/theme/theme.dart';
import '../../../../core/view/views.dart';

class FrameNinetyTwoItemWidget extends StatelessWidget {
  const FrameNinetyTwoItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      padding: EdgeInsets.only(
        left: 24.h,
        top: 16.v,
        bottom: 16.v,
      ),
      child: IntrinsicWidth(
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Expanded(
              child: Container(
                padding: EdgeInsets.symmetric(
                  horizontal: 24.h,
                  vertical: 15.v,
                ),
                decoration: AppDecoration.fillWhiteA.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Padding(
                      padding: EdgeInsets.only(top: 1.v),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          SizedBox(
                            width: 126.h,
                            child: Text(
                              "msg_tma_2_modular_headphone".tr,
                              maxLines: 3,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.titleLargeBlack900.copyWith(
                                height: 1.36,
                              ),
                            ),
                          ),
                          SizedBox(height: 25.v),
                          Row(
                            children: [
                              Padding(
                                padding: EdgeInsets.only(top: 3.v),
                                child: Text(
                                  "lbl_shop_now".tr,
                                  style: CustomTextStyles.titleSmallPrimary,
                                ),
                              ),
                              CustomImage(
                                image: AppImages.imgIconArrowRight,
                                height: 20.adaptSize,
                                width: 20.adaptSize,
                                margin: EdgeInsets.only(left: 12.h),
                              ),
                            ],
                          ),
                        ],
                      ),
                    ),
                    CustomImage(
                      image: AppImages.imgImage5,
                      height: 135.v,
                      width: 117.h,
                      margin: EdgeInsets.only(top: 1.v),
                    ),
                  ],
                ),
              ),
            ),
            Expanded(
              child: Container(
                margin: EdgeInsets.only(left: 15.h),
                padding: EdgeInsets.symmetric(
                  horizontal: 24.h,
                  vertical: 17.v,
                ),
                decoration: AppDecoration.fillWhiteA.copyWith(
                  borderRadius: BorderRadiusStyle.roundedBorder10,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomImage(image: AppImages.imgImage5, height: 135.v, width: 117.h),
                    Padding(
                      padding: EdgeInsets.only(
                        left: 10.h,
                        top: 10.v,
                        bottom: 10.v,
                      ),
                      child: Column(
                        children: [
                          SizedBox(
                            width: 151.h,
                            child: Text(
                              "lbl_tma_2".tr,
                              maxLines: null,
                              overflow: TextOverflow.ellipsis,
                              textAlign: TextAlign.right,
                              style: CustomTextStyles.titleLargeCairoBlack900.copyWith(
                                height: 1.36,
                              ),
                            ),
                          ),
                          SizedBox(height: 28.v),
                          Align(
                            alignment: Alignment.centerRight,
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.end,
                              children: [
                                CustomImage(
                                  image: AppImages.imgIconArrowRightPrimary,
                                  height: 20.adaptSize,
                                  width: 20.adaptSize,
                                  margin: EdgeInsets.symmetric(vertical: 3.v),
                                ),
                                Padding(
                                  padding: EdgeInsets.only(left: 12.h),
                                  child: Text(
                                    "lbl4".tr,
                                    style: CustomTextStyles.titleSmallCairoPrimary,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
