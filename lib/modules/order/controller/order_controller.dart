import 'package:ecommerce/core/utils/alerts.dart';
import 'package:ecommerce/modules/order/models/requests/order_body.dart';
import 'package:ecommerce/modules/order/models/responses/shipping_cost_model.dart';
import 'package:get/get.dart';

import '../../cart/models/requests/cart_product_model.dart';
import '../models/requests/shipping_cost_body.dart';
import '../repos/orders_repo.dart';

class OrderController extends GetxController {
  final OrdersRepo _ordersRepo;

  OrderController(this._ordersRepo);

  late final OrderBody orderBody;
  late final List<CartProduct> products;
  late num subtotal;

  RxBool isLoading = false.obs;
  RxBool isFetchingShippingCost = false.obs;
  Rx<ShippingCostModel?> shippingCost = Rx(null);

  @override
  void onInit() {
    super.onInit();
    products = Get.arguments["products"];
    subtotal = Get.arguments["subtotal"];
    orderBody = OrderBody(products: products);
  }

  Future<void> createOrder() async {
    isLoading(true);
    final result = await _ordersRepo.createOrder(orderBody);
    result.fold(
      (failure) => Alerts.showSnackBar(message: failure.message),
      (order) => Get.back(result: true),
    );
    isLoading(false);
  }

  Future<void> getShippingCost(ShippingCostBody shippingCostBody) async {
    isFetchingShippingCost(true);
    final result = await _ordersRepo.getShippingCost(shippingCostBody);
    result.fold(
      (failure) => Alerts.showSnackBar(
        message: failure.message,
        onActionPressed: () => getShippingCost(shippingCostBody),
      ),
      (shippingCost) {
        this.shippingCost(shippingCost);
        orderBody.copyWith(shippingMethodId: shippingCost.defaultShippingOptions.options.shippingMethodId);
      },
    );
    isFetchingShippingCost(false);
  }
}
