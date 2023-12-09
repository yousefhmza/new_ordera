import 'package:ecommerce/core/resources/resources.dart';
import 'package:ecommerce/core/services/responsive_service.dart';
import 'package:ecommerce/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/view/views.dart';

class HomeAppbar9 extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppbar9({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAppbar(
      showDefaultBackButton: false,
      leading: InkWell(
        onTap: () {},
        child: Center(
          child: CustomImage(image: AppIcons.menuVariant, height: 24.adaptSize, width: 24.adaptSize),
        ),
      ),
      actions: [
        const CustomImage(
          image: AppIcons.search,
          width: AppSize.s28,
          height: AppSize.s28,
          borderRadius: AppSize.s250,
        ),
        HorizontalSpace(AppSize.s12.h),
        const CustomImage(
          image: AppIcons.bag,
          width: AppSize.s28,
          height: AppSize.s28,
          borderRadius: AppSize.s250,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
