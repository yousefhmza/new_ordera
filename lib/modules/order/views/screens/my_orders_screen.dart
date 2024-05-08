import 'package:ecommerce/core/resources/resources.dart';
import 'package:ecommerce/core/view/views.dart';
import 'package:ecommerce/modules/order/views/widgets/order_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyOrdersScreen extends StatelessWidget {
  const MyOrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppbar(title: AppStrings.lblMyOrders.tr),
      body: ListView.separated(
        padding: const EdgeInsets.all(AppPadding.p24),
        itemBuilder: (context, index) => OrderItem(),
        separatorBuilder: (context, index) => const VerticalSpace(AppSize.s32),
        // itemCount: controller.myOrders.length,
        itemCount: 9,
      ),
    );
  }
}
