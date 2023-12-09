import 'package:ecommerce/core/services/responsive_service.dart';
import 'package:flutter/material.dart';

import '../../../../../core/resources/resources.dart';
import '../../../../../core/view/views.dart';

class CategoryChip5 extends StatelessWidget {
  final bool isSelected;
  final VoidCallback onTap;

  const CategoryChip5({required this.isSelected, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: Column(
        children: [
          CustomText(
            "PIZZA",
            style: TextStyle(
              color: isSelected ? AppColors.black : AppColors.gray400,
              fontSize: FontSize.s12.adaptSize,
              fontWeight: FontWeightManager.medium,
            ),
          ),
          VerticalSpace(AppSize.s6),
          Expanded(
            child: isSelected
                ? AspectRatio(
                    aspectRatio: 1,
                    child: CircleAvatar(backgroundColor: AppColors.black),
                  )
                : SizedBox(),
          ),
        ],
      ),
    );
  }
}
