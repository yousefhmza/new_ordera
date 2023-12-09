import 'package:ecommerce/core/resources/resources.dart';
import 'package:ecommerce/core/services/responsive_service.dart';
import 'package:ecommerce/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/view/views.dart';

class HomeAppbar2 extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppbar2({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAppbar(
      showDefaultBackButton: false,
      centerTitle: false,
      titleSpacing: AppSize.s0,
      leading: InkWell(
        onTap: () {},
        child: Center(
          child: CustomImage(image: AppIcons.menu, height: 24.adaptSize, width: 24.adaptSize),
        ),
      ),
      title: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          CustomText(
            "Location",
            style: Get.theme.textTheme.titleSmall?.copyWith(
              color: AppColors.gray500,
              fontSize: FontSize.s12,
              fontWeight: FontWeightManager.regular,
            ),
          ),
          DropdownButton<String>(
            items: [],
            onChanged: (value) {},
            padding: EdgeInsets.zero,
            isDense: true,
            underline: const SizedBox.shrink(),
            icon: const CustomImage(
              image: AppIcons.dropDownArrow,
              width: AppSize.s8,
              height: AppSize.s8,
              margin: EdgeInsetsDirectional.only(start: AppPadding.p4),
            ),
            hint: CustomText(
              "15th St., Ahmed Lotfy",
              style: Get.theme.textTheme.labelLarge?.copyWith(
                fontWeight: FontWeightManager.medium,
                color: AppColors.black,
              ),
            ),
          )
        ],
      ),
      actions: [
        CustomImage(image: AppIcons.bag, height: 24.adaptSize, width: 24.adaptSize),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
