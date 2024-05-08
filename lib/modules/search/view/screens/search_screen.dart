import 'package:ecommerce/core/view/views.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import '../../../../core/resources/resources.dart';
import '../components/search_initial_components.dart';
import '../components/search_products_components.dart';
// import '../../controller/search_controller.dart' as sc;

class SearchScreen extends StatelessWidget {
  const SearchScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: CustomAppbar(
        titleSpacing: AppSize.s0,
        title: Padding(
          padding: const EdgeInsetsDirectional.only(end: AppPadding.p24),
          child: CustomTextField(
            // controller: controller.searchFieldController,
            // onChanged: controller.onInputChange,
            prefix: const CustomIcon.svg(AppImages.imgIconSearch),
            hintText: AppStrings.lblSearchHere.tr,
          ),
        ),
      ),
      // body: Obx(
      //   () => controller.isLoading.value
      //       ? const LoadingSpinner()
      //       : controller.products.value == null
      //           ? const SearchInitialComponent()
      //           : const SearchedProductsComponent(),
      // ),
    );
  }
}
