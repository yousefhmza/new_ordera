import 'package:ecommerce/modules/product/models/responses/product_details_model.dart';
import 'package:get/get.dart';

import '../../../core/utils/alerts.dart';
import '../models/responses/product_model.dart';
import '../repo/product_repo.dart';

class ProductDetailsController extends GetxController {
  final ProductsRepo _productsRepo;

  ProductDetailsController(this._productsRepo);

  @override
  void onInit() {
    super.onInit();
    final int id = Get.arguments["id"];
    getProductById(id);
  }

  RxBool isLoadingProduct = false.obs;
  Rx<ProductDetailsModel?> product = Rx(null);

  Future<void> getProductById(int id) async {
    isLoadingProduct(true);
    final result = await _productsRepo.getProductById(id);
    result.fold(
      (failure) => Alerts.showSnackBar(message: failure.message, onActionPressed: () => getProductById(id)),
      (product) => this.product(product),
    );
    isLoadingProduct(false);
  }
}
