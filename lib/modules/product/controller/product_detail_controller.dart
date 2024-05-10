import 'package:ecommerce/core/resources/resources.dart';
import 'package:ecommerce/modules/cart/models/requests/cart_product_model.dart';
import 'package:ecommerce/modules/cart/repos/cart_repo.dart';
import 'package:ecommerce/modules/product/models/requests/review_body.dart';
import 'package:ecommerce/modules/product/models/responses/product_details_model.dart';
import 'package:get/get.dart';

import '../../../core/utils/alerts.dart';
import '../repo/product_repo.dart';

class ProductDetailsController extends GetxController {
  final CartRepo _cartRepo;
  final ProductsRepo _productsRepo;

  ProductDetailsController(this._productsRepo, this._cartRepo);

  @override
  void onInit() {
    super.onInit();
    final int id = Get.arguments["id"];
    getProductById(id);
  }

  RxBool isLoadingProduct = false.obs;
  RxBool isAddingReview = false.obs;
  Rx<ProductDetailsModel?> product = Rx(null);
  final CartProduct cartProduct = CartProduct();

  Future<void> getProductById(int id) async {
    isLoadingProduct(true);
    final result = await _productsRepo.getProductById(id);
    result.fold(
      (failure) => Alerts.showSnackBar(message: failure.message, onActionPressed: () => getProductById(id)),
      (product) {
        this.product(product);
        cartProduct.copyWith(
          productId: product.product.id,
          category: product.product.category.id,
          subcategory: product.product.subCategory.id,
          childCategory: product.product.childCategory.isEmpty ? 0 : product.product.childCategory[0].id,
          discountPrice: product.product.salePrice,
          oldPrice: product.product.price,
          title: product.product.name,
          taxOSR: product.product.taxOSR,
          qty: 1,
        );
      },
    );
    isLoadingProduct(false);
  }

  Future<void> addReview(ReviewBody reviewBody) async {
    isAddingReview(true);
    final result = await _productsRepo.addReview(reviewBody);
    result.fold(
      (failure) => Alerts.showSnackBar(message: failure.message),
      (review) {
        product.value!.ratings.add(review);
        Alerts.showToast(AppStrings.reviewAddedSuccessfully.tr);
        Get.back();
      },
    );
    isAddingReview(false);
  }
}
