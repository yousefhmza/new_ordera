import 'package:ecommerce/core/services/responsive_service.dart';
import 'package:flutter/material.dart';

import '../../../../../core/resources/resources.dart';
import '../../../../../core/view/views.dart';

class CategoryChip8 extends StatelessWidget {
  final bool isSelected;
  final VoidCallback onTap;

  const CategoryChip8({required this.isSelected, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      child: CustomText(
        "PIZZA",
        style: TextStyle(
          color: isSelected ? AppColors.black : AppColors.gray400,
          fontSize: FontSize.s12.adaptSize,
          fontWeight: FontWeightManager.medium,
        ),
      ),
    );
  }
}
