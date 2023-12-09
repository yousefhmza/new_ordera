import 'package:ecommerce/core/resources/resources.dart';
import 'package:ecommerce/core/services/responsive_service.dart';
import 'package:ecommerce/core/utils/constants.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../../core/view/views.dart';

class HomeAppbar7 extends StatelessWidget implements PreferredSizeWidget {
  const HomeAppbar7({super.key});

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
      title: CustomText("LOGO", style: Get.theme.textTheme.headlineSmall),
      actions: [
        CustomImage(
          image: Constants.tomCruiseImage,
          width: AppSize.s36,
          height: AppSize.s36,
          borderRadius: AppSize.s250,
        ),
      ],
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
