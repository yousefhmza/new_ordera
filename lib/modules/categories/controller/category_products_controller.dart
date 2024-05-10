import 'package:dartz/dartz.dart';
import 'package:get/get.dart';

import '../../../core/base/models/pagination_model.dart';
import '../../../core/services/error/failure.dart';
import 'package:ecommerce/modules/product/models/responses/in_list_product_model.dart';
import '../models/responses/category_model.dart';
import '../repo/categories_repo.dart';

class CategoryProductsController extends GetxController {
  final CategoriesRepo _categoriesRepo;

  CategoryProductsController(this._categoriesRepo);

  late final CategoryModel category;
  RxList<InListProductModel> categoryProducts = RxList([]);

  @override
  void onInit() {
    super.onInit();
    category = Get.arguments["category"];
  }

  Future<Either<Failure, PaginationModel<InListProductModel>>> getCategoryProducts({int page = 1}) async {
    final result = await _categoriesRepo.getCategoryProducts(category.name, page:page);
    return result;
  }
}
