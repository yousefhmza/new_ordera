import 'package:dartz/dartz.dart';
import 'package:ecommerce/modules/product/models/responses/product_details_model.dart';

import '../../../core/base/repositories/base_repository.dart';
import '../../../core/services/error/failure.dart';
import '../../../core/services/network/api_client.dart';
import '../../../core/services/network/endpoints.dart';

class ProductsRepo extends BaseRepository {
  final ApiClient _apiClient;

  ProductsRepo(this._apiClient, super.networkInfo);

  Future<Either<Failure, ProductDetailsModel>> getProductById(int id) {
    return super.call<ProductDetailsModel>(
      httpRequest: () => _apiClient.get(url: '${EndPoints.productDetails}/$id'),
      successReturn: (data) => ProductDetailsModel.fromJson(data),
    );
  }
}
