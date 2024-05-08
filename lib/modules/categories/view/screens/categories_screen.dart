import 'package:ecommerce/core/resources/app_values.dart';
import 'package:ecommerce/core/utils/globals.dart';
import 'package:ecommerce/core/view/views.dart';
import 'package:ecommerce/modules/categories/controller/categories_controller.dart';
import 'package:ecommerce/modules/categories/view/components/categories_appbar.dart';
import 'package:get/get.dart';

import 'package:flutter/material.dart';

class CategoriesScreen extends GetWidget<CategoriesController> {
  const CategoriesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    // controller.getAllCategories();
    return Column(
      children: [
        CategoriesAppbar(),
        const VerticalSpace(AppSize.s16),
        SizedBox(
          height: settings.categoryChipsListViewHeight,
          child: ListView.separated(
            scrollDirection: Axis.horizontal,
            padding: const EdgeInsets.symmetric(horizontal: AppPadding.p24),
            itemBuilder: (context, index) => settings.getCategoryChip(
              // category: controller.categories[index],
              // isSelected: controller.selectedCategoryId.value == controller.categories[index].id,
              isSelected: true,
              onTap: () {
                // controller.selectedCategoryId(controller.categories[index].id);
                // controller.getCategoryProducts();
              },
            ),
            separatorBuilder: (context, index) => HorizontalSpace(settings.categoryChipsSpacing ?? AppSize.s12),
            // itemCount: controller.categories.length,
            itemCount: 2,
          ),
        ),
        Expanded(
          child: GridView.builder(
            padding: const EdgeInsets.all(AppPadding.p24),
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: settings.productInGridCrossAxisCount!,
              childAspectRatio: settings.productInGridAspectRatio!,
              crossAxisSpacing: AppSize.s8,
              mainAxisSpacing: AppSize.s8,
            ),
            // itemCount: controller.categoryProducts.length,
            itemCount: 3,
            itemBuilder: (context, index) => settings.getProductItem(
              // product: controller.categoryProducts[index],
              dynamicDimensions: true,
            ),
          ),
        ),
      ],
    );
  }
}
