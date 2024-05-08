import 'package:ecommerce/core/resources/resources.dart';
import 'package:ecommerce/core/services/responsive_service.dart';
import 'package:ecommerce/modules/search/view/widgets/recent_search_chip.dart';
import '../../../../core/view/views.dart';
// import '../../../categories/view/widgets/category_item.dart';
import '../../../home/view/widgets/category_item.dart';
// import '../../controller/search_controller.dart' as sc;
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class SearchInitialComponent extends StatelessWidget {
  const SearchInitialComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      padding: const EdgeInsets.symmetric(vertical: AppPadding.p24),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Column(
            children: [
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: AppPadding.p24),
                child: RowWithTitle(title: AppStrings.lblCategories.tr),
              ),
              const VerticalSpace(AppSize.s16),
              Align(
                alignment: Alignment.centerRight,
                child: SizedBox(
                  height: 104.v,
                  child: ListView.separated(
                    padding: const EdgeInsets.symmetric(horizontal: AppPadding.p24),
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) => const HorizontalSpace(AppSize.s8),
                    itemCount: 5,
                    itemBuilder: (context, index) => CategoryItem(),
                  ),
                ),
              ),
              const VerticalSpace(AppSize.s24),
              const Divider(
                height: AppSize.s1,
                color: AppColors.gray200,
                endIndent: AppPadding.p24,
                indent: AppPadding.p24,
              ),
            ],
          ),
          const VerticalSpace(AppSize.s24),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: AppPadding.p24),
            child: CustomText(
              AppStrings.lblRecentSearches.tr,
              style: Theme.of(context)
                  .textTheme
                  .titleSmall
                  ?.copyWith(fontSize: FontSize.s16, fontWeight: FontWeightManager.bold),
            ),
          ),
          const VerticalSpace(AppSize.s16),
          Obx(
            () => Padding(
              padding: const EdgeInsets.symmetric(horizontal: AppPadding.p24),
              child: Wrap(
                spacing: AppSize.s8,
                runSpacing: AppSize.s8,
                children: List.generate(
                  // controller.recentSearch.length,
                  5,
                  (index) => RecentSearchChip(text: "controller.recentSearch[index]"),
                ),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
