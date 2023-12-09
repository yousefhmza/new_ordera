import 'package:carousel_slider/carousel_slider.dart';
import 'package:ecommerce/core/resources/resources.dart';
import 'package:ecommerce/core/services/responsive_service.dart';
import 'package:ecommerce/core/utils/globals.dart';
import 'package:ecommerce/modules/home/view/components/home_offer_component.dart';
import 'package:ecommerce/modules/home/view/widgets/category_item.dart';
import 'package:get/get.dart';

import 'package:flutter/material.dart';

import '../../../../core/view/views.dart';
import '../../controller/home_controller.dart';
import '../widgets/frameninetytwo_item_widget.dart';
import '../widgets/sellercard_item_widget.dart';

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
                  child: CustomSearchView(
                    showCancel: false,
                    hintText: AppStrings.lblSearchHere.tr,
                    contentPadding: EdgeInsets.only(
                      top: 15.v,
                      right: 30.h,
                      bottom: 15.v,
                    ),
                  ),
                ),
                VerticalSpace(AppSize.s16),
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
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.h),
                  child: RowWithTitle(
                    title: "lbl_categories".tr,
                    viewAllText: "lbl_view_all".tr,
                    onTap: () {},
                  ),
                ),
                SizedBox(height: 11.v),
                Align(
                  alignment: Alignment.centerRight,
                  child: SizedBox(
                    height: 104.v,
                    child: ListView.separated(
                      padding: EdgeInsets.symmetric(horizontal: 24.h),
                      scrollDirection: Axis.horizontal,
                      separatorBuilder: (context, index) => SizedBox(width: 8.h),
                      itemCount: 4,
                      itemBuilder: (context, index) => CategoryItem(),
                    ),
                  ),
                ),
                SizedBox(height: 28.v),
                HomeOfferComponent(),
                SizedBox(height: 29.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.h),
                  child: RowWithTitle(
                    title: "lbl_most_sale".tr,
                    viewAllText: "lbl_view_all".tr,
                    onTap: () {},
                  ),
                ),
                SizedBox(height: 12.v),
                SizedBox(
                  height: settings.productListViewHeight,
                  child: ListView.separated(
                    padding: EdgeInsets.symmetric(horizontal: 24.h),
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) => SizedBox(width: 16.h),
                    itemCount: 4,
                    itemBuilder: (context, index) => settings.getProductItem,
                  ),
                ),
                SizedBox(height: 29.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.h),
                  child: RowWithTitle(
                    title: "lbl_most_common".tr,
                    viewAllText: "lbl_view_all".tr,
                    onTap: () {},
                  ),
                ),
                SizedBox(height: 12.v),
                SizedBox(
                  height: settings.productListViewHeight,
                  child: ListView.separated(
                    padding: EdgeInsets.symmetric(horizontal: 24.h),
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) => SizedBox(width: 16.h),
                    itemCount: 4,
                    itemBuilder: (context, index) => settings.getProductItem,
                  ),
                ),
                SizedBox(height: 17.v),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: 24.h),
                  child: RowWithTitle(
                    title: "lbl_sellers".tr,
                    viewAllText: "lbl_view_all".tr,
                    onTap: () {},
                  ),
                ),
                SizedBox(height: 12.v),
                SizedBox(
                  height: 72.v,
                  child: ListView.separated(
                    padding: EdgeInsets.symmetric(horizontal: 24.h),
                    scrollDirection: Axis.horizontal,
                    separatorBuilder: (context, index) => SizedBox(width: 12.h),
                    itemCount: 4,
                    itemBuilder: (context, index) => SellerCardItemWidget(),
                  ),
                ),
                SizedBox(height: 25.v),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
