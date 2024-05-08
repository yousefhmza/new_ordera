import 'package:ecommerce/core/utils/json_utils.dart';

class OrderModel {
  final dynamic id;
  final dynamic name;
  final dynamic email;
  final dynamic userId;
  final dynamic phone;
  final dynamic country;
  final dynamic address;
  final dynamic city;
  final dynamic state;
  final dynamic zipcode;
  final dynamic message;
  final dynamic coupon;
  final dynamic couponDiscounted;
  final dynamic totalAmount;
  final dynamic status;
  final dynamic paymentStatus;
  final dynamic paymentGateway;
  final dynamic paymentTrack;
  final dynamic transactionId;
  final dynamic paymentMeta;
  final dynamic shippingAddressId;
  final dynamic selectedShippingOption;
  final dynamic checkoutType;
  final dynamic checkoutImagePath;
  final DateTime createdAt;
  final DateTime updatedAt;

  OrderModel({
    required this.id,
    required this.name,
    required this.email,
    required this.userId,
    required this.phone,
    required this.country,
    required this.address,
    required this.city,
    required this.state,
    required this.zipcode,
    required this.message,
    required this.coupon,
    required this.couponDiscounted,
    required this.totalAmount,
    required this.status,
    required this.paymentStatus,
    required this.paymentGateway,
    required this.paymentTrack,
    required this.transactionId,
    required this.paymentMeta,
    required this.shippingAddressId,
    required this.selectedShippingOption,
    required this.checkoutType,
    required this.checkoutImagePath,
    required this.createdAt,
    required this.updatedAt,
  });

  factory OrderModel.fromJson(Map<String, dynamic> json) => OrderModel(
        id: json["id"],
        name: json["name"],
        email: json["email"],
        userId: json["user_id"],
        phone: json["phone"],
        country: json["country"],
        address: json["address"],
        city: json["city"],
        state: json["state"],
        zipcode: json["zipcode"],
        message: json["message"],
        coupon: json["coupon"],
        couponDiscounted: json["coupon_discounted"],
        totalAmount: json["total_amount"],
        status: json["status"],
        paymentStatus: json["payment_status"],
        paymentGateway: json["payment_gateway"],
        paymentTrack: json["payment_track"],
        transactionId: json["transaction_id"],
        paymentMeta: json["payment_meta"],
        shippingAddressId: json["shipping_address_id"],
        selectedShippingOption: json["selected_shipping_option"],
        checkoutType: json["checkout_type"],
        checkoutImagePath: json["checkout_image_path"],
        createdAt: JsonUtils.parseDatetimeFromJson(json["created_at"]),
        updatedAt: JsonUtils.parseDatetimeFromJson(json["updated_at"]),
      );
}
