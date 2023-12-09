import 'package:ecommerce/core/resources/resources.dart';
import 'package:ecommerce/core/services/responsive_service.dart';
import 'package:flutter/material.dart';

import '../../../../config/theme/theme.dart';
import '../../../../core/view/views.dart';

// ignore: must_be_immutable
class ProductdetailoverviewItemWidget extends StatelessWidget {
  ProductdetailoverviewItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 10.h,
        vertical: 15.v,
      ),
      decoration: AppDecoration.outlineBluegray5000c1.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder15,
      ),
      width: 155.h,
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomImage(
            image: AppImages.imgImage5,
            height: 125.adaptSize,
            width: 125.adaptSize,
          ),
          SizedBox(height: 19.v),
          Text(
            "TMA-2 HD Wireless",
            style: CustomTextStyles.bodyMediumDMSans,
          ),
          SizedBox(height: 3.v),
          Text(
            "USD 350",
            style: CustomTextStyles.labelLargeDMSansBlack900,
          ),
        ],
      ),
    );
  }
}
