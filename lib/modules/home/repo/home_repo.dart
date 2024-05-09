import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/base/models/pagination_model.dart';
import 'package:ecommerce/core/base/repositories/base_repository.dart';
import 'package:ecommerce/core/services/error/failure.dart';
import 'package:ecommerce/core/services/network/api_client.dart';
import 'package:ecommerce/core/services/network/endpoints.dart';
import 'package:ecommerce/modules/home/models/responses/slider_item_model.dart';
import 'package:ecommerce/modules/product/models/responses/in_list_product_model.dart';

class HomeRepo extends BaseRepository {
  final ApiClient _apiClient;

  HomeRepo(this._apiClient, super.networkInfo);

  Future<Either<Failure, List<SliderItemModel>>> getHomeSliderItems() async {
    return super.call<List<SliderItemModel>>(
      httpRequest: () => _apiClient.get(url: EndPoints.slider),
      successReturn: (data) => List<SliderItemModel>.from(data.map((item) => SliderItemModel.fromJson(item))),
    );
  }

  Future<Either<Failure, PaginationModel<InListProductModel>>> getRecentProducts({int page = 1}) async {
    return super.call<PaginationModel<InListProductModel>>(
      httpRequest: () => _apiClient.get(
        url: EndPoints.recentProducts,
        queryParameters: {"page": page},
      ),
      successReturn: (data) => PaginationModel.fromJson(
        data,
        List<InListProductModel>.from(data["data"].map((product) => InListProductModel.fromJson(product))),
      ),
    );
  }

  Future<Either<Failure, PaginationModel<InListProductModel>>> getFeaturedProducts({int page = 1}) async {
    return super.call<PaginationModel<InListProductModel>>(
      httpRequest: () => _apiClient.get(
        url: EndPoints.featuredProducts,
        queryParameters: {"page": page},
      ),
      successReturn: (data) => PaginationModel.fromJson(
        data["meta"],
        List<InListProductModel>.from(data["data"].map((product) => InListProductModel.fromJson(product))),
      ),
    );
  }
}
