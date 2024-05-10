import 'package:dartz/dartz.dart';
import 'package:get/get.dart';

import '../../../core/resources/resources.dart';
import 'package:ecommerce/core/services/local/cart_database.dart';
import '../../../core/services/error/error_handler.dart';
import '../../../core/services/error/failure.dart';
import '../models/requests/cart_product_model.dart';

class CartRepo {
  final CartDatabase _cartDatabase;

  CartRepo(this._cartDatabase);

  Future<Either<Failure, String>> addToCart(CartProduct product) async {
    try {
      await _cartDatabase.insertData(product);
      return Right(AppStrings.msgProductAddedToCart.tr);
    } on Exception catch (e) {
      return Left(ErrorHandler.handle(e).failure);
    }
  }

  Future<Either<Failure, List<CartProduct>>> getCartProducts() async {
    try {
      final products = await _cartDatabase.getData();
      return Right(products);
    } on Exception catch (e) {
      return Left(ErrorHandler.handle(e).failure);
    }
  }

  Future<Either<Failure, String>> updateCartProduct(CartProduct product) async {
    try {
      await _cartDatabase.updateData(product);
      return const Right("");
    } on Exception catch (e) {
      return Left(ErrorHandler.handle(e).failure);
    }
  }

  Future<Either<Failure, String>> deleteCartProduct(int productId) async {
    try {
      await _cartDatabase.deleteData(productId);
      return const Right("");
    } on Exception catch (e) {
      return Left(ErrorHandler.handle(e).failure);
    }
  }

  Future<Either<Failure, String>> clearCart() async {
    try {
      await _cartDatabase.deleteAllRows();
      return const Right("");
    } on Exception catch (e) {
      return Left(ErrorHandler.handle(e).failure);
    }
  }
}
