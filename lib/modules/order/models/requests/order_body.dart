import 'dart:convert';

import 'package:ecommerce/core/extensions/non_null_extensions.dart';
import 'package:ecommerce/core/resources/resources.dart';
import 'package:ecommerce/modules/addresses/models/responses/address_model.dart';
import 'package:get/get.dart';

import '../../../cart/models/requests/cart_product_model.dart';

class OrderBody {
  final List<CartProduct> products;
  Address? address;
  String? message;
  int? shippingMethodId;

  OrderBody({
    required this.products,
    this.address,
    this.message,
    this.shippingMethodId,
  });

  void copyWith({
    Address? address,
    String? message,
    int? shippingMethodId,
  }) {
    this.address = address ?? this.address;
    this.message = message ?? this.message;
    this.shippingMethodId = shippingMethodId ?? this.shippingMethodId;
  }

  String? validate() {
    if (address == null) {
      return AppStrings.msgChooseAddress.tr;
    }
    return null;
  }

  Map<String, dynamic> toJson() {
    final Map<String, Map<String, dynamic>> cartProducts = {};
    for (var product in products) {
      cartProducts.addAll(product.toOrderJson());
    }
    return {
      if (address != null) 'name': address!.fullName,
      if (address != null) 'email': address!.email,
      if (address != null) 'phone': address!.phone,
      if (address != null) 'country': address!.countryId,
      if (address != null) 'state': address!.stateId,
      if (address != null) 'address': address!.address,
      if (address != null) 'city': address!.cityId,
      if (shippingMethodId != null) 'shipping_method': shippingMethodId,
      'used_coupon': "",
      'message': message.orEmpty,
      'payment_gateway': "cash_on_delivery",
      // 'manual_trasaction_id': transactionId,
      // 'bank_payment_input': imagePath !=null ? await MultipartFile.fromFile(imagePath,
      //     filename: '${address['name']}$imagePath.jpg') : null,
      'cart': jsonEncode(cartProducts),
    };
  }
}
