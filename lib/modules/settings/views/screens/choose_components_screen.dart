import 'package:ecommerce/config/navigation/navigation.dart';
import 'package:ecommerce/core/resources/resources.dart';
import 'package:ecommerce/core/utils/globals.dart';
import 'package:ecommerce/core/view/views.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class ChooseComponentsScreen extends StatelessWidget {
  const ChooseComponentsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return StatusBar(
      child: Scaffold(
        body: SafeArea(
          child: Padding(
            padding: EdgeInsets.all(AppPadding.p24),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Center(
                  child: CustomText("Choose components", style: Get.theme.textTheme.headlineMedium),
                ),
                VerticalSpace(AppSize.s40),
                CustomText("Product item"),
                VerticalSpace(AppSize.s8),
                CustomDropDownField<int>(
                  hintText: "Product item",
                  onChanged: (value) => settings.copyWith(productItem: value),
                  items: List.generate(
                    10,
                    (index) => DropdownMenuItem(
                      value: index + 1,
                      child: CustomText((index + 1).toString()),
                    ),
                  ),
                ),
                VerticalSpace(AppSize.s40),
                CustomText("Appbar"),
                VerticalSpace(AppSize.s8),
                CustomDropDownField(
                  hintText: "Appbar",
                  onChanged: (value) => settings.copyWith(appbar: value),
                  items: List.generate(
                    10,
                    (index) => DropdownMenuItem(
                      value: index + 1,
                      child: CustomText((index + 1).toString()),
                    ),
                  ),
                ),
                VerticalSpace(AppSize.s40),
                CustomText("Category chip"),
                VerticalSpace(AppSize.s8),
                CustomDropDownField(
                  hintText: "Category chip",
                  onChanged: (value) => settings.copyWith(categoryChip: value),
                  items: List.generate(
                    10,
                    (index) => DropdownMenuItem(
                      value: index + 1,
                      child: CustomText((index + 1).toString()),
                    ),
                  ),
                ),
                Spacer(),
                CustomButton(
                  text: AppStrings.lblContinue.tr,
                  onPressed: () => Get.offAllNamed(Routes.layoutScreen),
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
