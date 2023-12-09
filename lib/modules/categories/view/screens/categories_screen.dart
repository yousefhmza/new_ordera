import 'package:ecommerce/core/resources/app_values.dart';
import 'package:ecommerce/core/services/responsive_service.dart';
import 'package:ecommerce/core/utils/globals.dart';
import 'package:ecommerce/core/view/views.dart';
import 'package:ecommerce/modules/categories/controller/categories_controller.dart';
import 'package:ecommerce/modules/categories/view/components/categories_appbar.dart';
import 'package:ecommerce/modules/categories/view/widgets/category_chip/category_chip_1.dart';
import 'package:ecommerce/modules/home/view/widgets/category_item.dart';
import 'package:get/get.dart';

import 'package:flutter/material.dart';

class CategoriesScreen extends GetWidget<CategoriesController> {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        CategoriesAppbar(),
        const VerticalSpace(AppSize.s16),
        Obx(
          () {
            controller.selectedIndex.value;
            return SizedBox(
              height: settings.categoryChipsListViewHeight,
              child: ListView.separated(
                scrollDirection: Axis.horizontal,
                padding: EdgeInsets.symmetric(horizontal: AppPadding.p24),
                itemBuilder: (context, index) => settings.getCategoryChip(
                  isSelected: controller.selectedIndex.value == index,
                  onTap: () => controller.selectedIndex(index),
                ),
                separatorBuilder: (context, index) =>  HorizontalSpace(settings.categoryChipsSpacing ?? AppSize.s12),
                itemCount: 7,
              ),
            );
          },
        ),
        Expanded(
          child: GridView.builder(
            padding: EdgeInsets.all(AppPadding.p24),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 3,
              childAspectRatio: 1,
              crossAxisSpacing: AppSize.s8,
              mainAxisSpacing: AppSize.s8,
            ),
            itemCount: 7,
            itemBuilder: (context, index) => CategoryItem(),
          ),
        ),
      ],
    );
  }
}
