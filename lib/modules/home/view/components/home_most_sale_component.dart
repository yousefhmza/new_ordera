import 'package:ecommerce/core/services/responsive_service.dart';
import 'package:ecommerce/modules/home/controller/home_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/utils/globals.dart';
import '../../../../core/view/views.dart';

class HomeMostSaleComponent extends GetWidget<HomeController> {
  const HomeMostSaleComponent({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
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
            // itemCount: controller.mostSaleProducts.length,
            itemCount: 2,
            itemBuilder: (context, index) => settings.getProductItem(),
          ),
        ),
      ],
    );
  }
}
