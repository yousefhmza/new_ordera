import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/config/navigation/navigation.dart';
import 'package:ecommerce/core/resources/resources.dart';
import 'package:ecommerce/core/services/responsive_service.dart';
import 'package:ecommerce/core/utils/globals.dart';
import 'package:ecommerce/modules/home/view/components/home_most_common_component.dart';
import 'package:ecommerce/modules/home/view/components/home_most_sale_component.dart';
import 'package:ecommerce/modules/home/view/components/home_offer_component.dart';
import 'package:get/get.dart';

import 'package:flutter/material.dart';

import '../../../../core/view/views.dart';
import '../../controller/home_controller.dart';
import '../components/frame_ninty_two.dart';
import '../components/home_categories_component.dart';

class HomeScreen extends GetWidget<HomeController> {
  const HomeScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        settings.getAppbar,
        Expanded(
          child: SingleChildScrollView(
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: AppPadding.p16),
                  child: GestureDetector(
                    onTap: () => Get.toNamed(Routes.searchScreen),
                    child: CustomTextField(
                      enabled: false,
                      prefix: const CustomIcon.svg(AppImages.imgIconSearch),
                      hintText: AppStrings.lblSearchHere.tr,
                    ),
                  ),
                ),
                const VerticalSpace(AppSize.s16),
                Container(
                  color: AppColors.primary.withOpacity(0.1),
                  child: CarouselSlider.builder(
                    options: CarouselOptions(
                      height: 202.v,
                      initialPage: 0,
                      autoPlay: true,
                      viewportFraction: 1.0,
                      enableInfiniteScroll: false,
                      scrollDirection: Axis.horizontal,
                      onPageChanged: (index, reason) {
                        // controller.sliderIndex.value = index;
                      },
                    ),
                    itemCount: 3,
                    itemBuilder: (context, index, realIndex) => FrameNinetyTwoItemWidget(),
                  ),
                ),
                SizedBox(height: 28.v),
                const HomeCategoriesComponent(),
                SizedBox(height: 28.v),
                const HomeOfferComponent(),
                const HomeMostSaleComponent(),
                const HomeMostCommonComponent(),
                SizedBox(height: 17.v),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
