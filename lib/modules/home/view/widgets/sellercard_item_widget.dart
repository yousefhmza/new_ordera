import 'package:ecommerce/core/resources/resources.dart';
import 'package:ecommerce/core/services/responsive_service.dart';
import 'package:flutter/material.dart';

import '../../../../core/view/views.dart';

class SellerCardItemWidget extends StatelessWidget {
  const SellerCardItemWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: 72.h,
      height: 72.h,
      child: Container(
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.gray200),
          borderRadius: BorderRadius.circular(AppSize.s10),
        ),
        padding: EdgeInsets.all(AppPadding.p12),
        child: CustomImage(
          image: AppImages.imgSimpleIconsSony,
          width: double.infinity,
          fit: BoxFit.contain,
        ),
      ),
    );
  }
}
