import 'package:dartz/dartz.dart';
import 'package:ecommerce/core/base/models/pagination_model.dart';
import 'package:ecommerce/core/base/repositories/base_repository.dart';
import 'package:ecommerce/core/services/error/failure.dart';
import 'package:ecommerce/core/services/network/api_client.dart';
import 'package:ecommerce/core/services/network/endpoints.dart';
import 'package:ecommerce/modules/categories/models/responses/category_model.dart';
import 'package:ecommerce/modules/product/models/responses/in_list_rpduct_model.dart';

class LegalRepo extends BaseRepository {
  final ApiClient _apiClient;

  LegalRepo(this._apiClient, super.networkInfo);

// Future<Either<Failure,String>> getTermsAndConditions() async {
//   return super.call<String>(
//     httpRequest: () => _apiClient.get(url: EndPoints.terms),
//     successReturn: (data) => List<CategoryModel>.from(data.map((category) => CategoryModel.fromJson(category))),
//   );
// }
//
// Future<Either<Failure, PaginationModel<InListProductModel>>> getCategoryProducts(String categoryName) async {
//   return super.call(
//     httpRequest: () => _apiClient.get(
//       url: EndPoints.search,
//       queryParameters: {"category": categoryName},
//     ),
//     successReturn: (data) => PaginationModel.fromJson(
//       data,
//       List<InListProductModel>.from(data["data"].map((product) => InListProductModel.fromJson(product))),
//     ),
//   );
// }
}
