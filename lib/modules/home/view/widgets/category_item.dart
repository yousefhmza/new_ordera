import 'package:ecommerce/core/resources/resources.dart';
import 'package:ecommerce/core/services/responsive_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../config/theme/theme.dart';
import '../../../../core/view/views.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 23.h,
        vertical: 10.v,
      ),
      decoration: AppDecoration.outlineGray200.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomImage(
            image: AppImages.imgFrame,
            height: 48.adaptSize,
            width: 48.adaptSize,
          ),
          SizedBox(height: 3.v),
          CustomText(
          AppStrings.lblClothes.tr,
          style: CustomTextStyles.labelLargeCairoBlack900,
          ),
        ],
      ),
    );
  }
}
