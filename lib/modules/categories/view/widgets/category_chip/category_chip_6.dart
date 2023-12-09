import 'package:ecommerce/core/services/responsive_service.dart';
import 'package:flutter/material.dart';

import '../../../../../core/resources/resources.dart';
import '../../../../../core/view/views.dart';

class CategoryChip6 extends StatelessWidget {
  final bool isSelected;
  final VoidCallback onTap;

  const CategoryChip6({required this.isSelected, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: IntrinsicWidth(
        child: Column(
          children: [
            Row(
              children: [
                CustomImage(
                  image: AppIcons.pizza,
                  fit: BoxFit.contain,
                  height: AppSize.s22.adaptSize,
                  width: AppSize.s22.adaptSize,
                  color: isSelected ? AppColors.black : AppColors.gray400,
                ),
                HorizontalSpace(AppSize.s4.h),
                CustomText(
                  "PIZZA",
                  style: TextStyle(
                    color: isSelected ? AppColors.black : AppColors.gray400,
                    fontSize: FontSize.s12.adaptSize,
                    fontWeight: FontWeightManager.medium,
                  ),
                ),
              ],
            ),
            const VerticalSpace(AppSize.s6),
            Container(
              height: 1,
              width: double.infinity,
              color: isSelected ? AppColors.black : AppColors.white,
            )
          ],
        ),
      ),
    );
  }
}
