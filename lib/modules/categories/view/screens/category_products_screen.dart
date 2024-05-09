import 'package:ecommerce/core/view/views.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/resources/resources.dart';
import '../../../../core/utils/globals.dart';
import '../../../product/models/responses/in_list_product_model.dart';

class CategoryProductsScreen extends StatelessWidget {
  const CategoryProductsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppbar(title: "controller.category.name"),
      body: Expanded(
        child: GridView.builder(
          padding: const EdgeInsets.all(AppPadding.p24),
          gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: settings.productInGridCrossAxisCount!,
            childAspectRatio: settings.productInGridAspectRatio!,
            crossAxisSpacing: AppSize.s8,
            mainAxisSpacing: AppSize.s8,
          ),
          // itemCount: controller.categoryProducts.length,
          itemCount: 4,
          itemBuilder: (context, index) => settings.getProductItem(
            // product: controller.categoryProducts[index],
            product: InListProductModel.fromJson({}),
            dynamicDimensions: true,
          ),
        ),
      ),
    );
  }
}
