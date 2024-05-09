import 'package:ecommerce/core/view/views.dart';
import 'package:ecommerce/modules/product/models/responses/in_list_product_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import '../../../../core/resources/resources.dart';
import '../../../../core/utils/globals.dart';
// import '../../controller/search_controller.dart' as sc;

class SearchedProductsComponent extends StatelessWidget {
  const SearchedProductsComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return CustomScrollView(
      slivers: [
        SliverPadding(
          padding: const EdgeInsets.all(AppPadding.p24).copyWith(bottom: AppPadding.p0),
          sliver: SliverToBoxAdapter(
            child: CustomText(
              AppStrings.lblSearchResults.tr,
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                    fontWeight: FontWeightManager.bold,
                    fontSize: FontSize.s16,
                  ),
            ),
          ),
        ),
        SliverPadding(
          padding: const EdgeInsets.all(AppPadding.p24),
          sliver: SliverGrid.builder(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: settings.productInGridCrossAxisCount!,
              childAspectRatio: settings.productInGridAspectRatio!,
              crossAxisSpacing: AppSize.s8,
              mainAxisSpacing: AppSize.s8,
            ),
            // itemCount: controller.products.value?.length ?? 0,
            itemCount: 4,
            itemBuilder: (context, index) => settings.getProductItem(
              // product: controller.products.value![index],
              product: InListProductModel.fromJson({}),
              dynamicDimensions: true,
            ),
          ),
        )
      ],
    );
  }
}
