import 'package:ecommerce/core/resources/resources.dart';
import 'package:ecommerce/core/view/views.dart';
import 'package:ecommerce/modules/order/controller/my_orders_controller.dart';
import 'package:ecommerce/modules/order/models/responses/order_model.dart';
import 'package:ecommerce/modules/order/views/widgets/order_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class MyOrdersScreen extends GetWidget<MyOrdersController> {
  const MyOrdersScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppbar(title: AppStrings.lblMyOrders.tr),
      body: PaginatedListView<OrderModel>(
        fetchData: (page) => controller.getMyOrders(page: page),
        child: (index) => OrderItem(controller.myOrders[index]),
        onListItemsChange: (orders) => controller.myOrders(orders),
        padding: const EdgeInsets.all(AppPadding.p24),
        separator: (index) => const VerticalSpace(AppSize.s32),
      ),
    );
  }
}
