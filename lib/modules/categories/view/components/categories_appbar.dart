import 'package:ecommerce/core/resources/resources.dart';
import 'package:ecommerce/core/view/views.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoriesAppbar extends StatelessWidget implements PreferredSizeWidget {
  const CategoriesAppbar({super.key});

  @override
  Widget build(BuildContext context) {
    return MainAppbar(
      showDefaultBackButton: false,
      title: AppStrings.lblCategories.tr,
      actions: [
        CustomImage(
          image: AppImages.imgIconFilterAltLight,
          width: AppSize.s24,
          height: AppSize.s24,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
