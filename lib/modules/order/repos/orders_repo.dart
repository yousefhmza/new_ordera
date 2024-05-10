import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/base/models/pagination_model.dart';
import 'package:ecommerce/core/base/repositories/base_repository.dart';
import 'package:ecommerce/core/services/error/failure.dart';
import 'package:ecommerce/core/services/network/api_client.dart';
import 'package:ecommerce/core/services/network/endpoints.dart';
import 'package:ecommerce/modules/order/models/requests/shipping_cost_body.dart';

import 'package:ecommerce/modules/order/models/responses/order_model.dart';
import 'package:ecommerce/modules/order/models/responses/shipping_cost_model.dart';

import '../models/requests/order_body.dart';

class OrdersRepo extends BaseRepository {
  final ApiClient _apiClient;

  OrdersRepo(this._apiClient, super.networkInfo);

  Future<Either<Failure, OrderModel>> createOrder(OrderBody orderBody) async {
    return super.call(
      httpRequest: () => _apiClient.post(
        url: EndPoints.checkout,
        requestBody: orderBody.toJson(),
      ),
      successReturn: (data) => OrderModel.fromJson(data),
    );
  }

  Future<Either<Failure, ShippingCostModel>> getShippingCost(ShippingCostBody shippingCostBody) async {
    return super.call(
      httpRequest: () => _apiClient.post(
        url: EndPoints.shippingCost,
        requestBody: shippingCostBody.toJson(),
      ),
      successReturn: (data) => ShippingCostModel.fromJson(data),
    );
  }

  Future<Either<Failure, PaginationModel<OrderModel>>> getMyOrders({int page = 1}) async {
    return super.call(
      httpRequest: () => _apiClient.get(
        url: EndPoints.orderList,
        queryParameters: {"page": page},
      ),
      successReturn: (data) => PaginationModel.fromJson(
        data,
        List<OrderModel>.from(data["data"].map((order) => OrderModel.fromJson(order))),
      ),
    );
  }
}
