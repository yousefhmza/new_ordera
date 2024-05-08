import 'package:ecommerce/core/resources/app_values.dart';
import 'package:ecommerce/core/resources/resources.dart';
import 'package:ecommerce/core/services/responsive_service.dart';
import 'package:ecommerce/core/utils/constants.dart';
import 'package:ecommerce/core/view/views.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SimilarProductItem extends StatelessWidget {
  const SimilarProductItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: AppSize.s150.h,
      height: AppSize.s225.v,
      padding: const EdgeInsets.all(AppPadding.p12),
      decoration: BoxDecoration(
        color: AppColors.white,
        borderRadius: BorderRadius.circular(AppSize.s16),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Expanded(
            child: Center(child: CustomImage(image: Constants.headphone, fit: BoxFit.contain)),
          ),
          const VerticalSpace(AppSize.s20),
          CustomText("TMA-2 HD Wireless"),
          const VerticalSpace(AppSize.s4),
          CustomText(
            "${AppStrings.usd.tr} 400",
            style: Theme.of(context).textTheme.titleSmall?.copyWith(
              fontWeight: FontWeightManager.bold,
              fontSize: FontSize.s12,
            ),
          ),
        ],
      ),
    );
  }
}
