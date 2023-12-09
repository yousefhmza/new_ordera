import 'package:ecommerce/core/resources/resources.dart';
import 'package:ecommerce/core/services/responsive_service.dart';
import 'package:ecommerce/core/view/views.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../config/theme/theme.dart';

class RowWithTitle extends StatelessWidget {
  final String title;
  final String viewAllText;
  final VoidCallback onTap;

  const RowWithTitle({required this.title, required this.viewAllText, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        CustomText(title, style: CustomTextStyles.titleMediumSemiBold_1.copyWith(color: AppColors.black)),
        InkWell(
          onTap: onTap,
          child: CustomText(
            viewAllText,
            style: Get.theme.textTheme.labelLarge!.copyWith(
              decoration: TextDecoration.underline,
              color: Get.theme.colorScheme.primary,
            ),
          ),
        )
      ],
    );
  }
}
