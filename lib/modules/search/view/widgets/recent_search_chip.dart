import 'package:ecommerce/core/resources/resources.dart';
import 'package:ecommerce/core/view/views.dart';
// import '../../controller/search_controller.dart' as sc;
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class RecentSearchChip extends StatelessWidget {
  final String text;

  const RecentSearchChip({required this.text, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      borderRadius: BorderRadius.circular(AppSize.s8),
      // onTap: () => controller.onInputChange(text, updateSearchFieldController: true),
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16, vertical: AppPadding.p4),
        decoration: BoxDecoration(
          border: Border.all(color: AppColors.gray300),
          borderRadius: BorderRadius.circular(AppSize.s8),
        ),
        child: Row(
          mainAxisSize: MainAxisSize.min,
          children: [
            const CustomIcon.svg(AppImages.imgTimelight),
            const HorizontalSpace(AppSize.s6),
            CustomText(
              text,
              style: Theme.of(context).textTheme.titleSmall?.copyWith(fontWeight: FontWeightManager.regular),
            )
          ],
        ),
      ),
    );
  }
}
