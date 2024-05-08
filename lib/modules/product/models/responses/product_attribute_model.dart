import 'package:ecommerce/core/utils/json_utils.dart';

class ProductAttribute {
  final int id;
  final String name;
  final String colorCode;
  final String slug;
  final DateTime createdAt;
  final DateTime updatedAt;
  final int laravelThroughKey;
  final String sizeCode;

  ProductAttribute({
    required this.id,
    required this.name,
    required this.colorCode,
    required this.slug,
    required this.createdAt,
    required this.updatedAt,
    required this.laravelThroughKey,
    required this.sizeCode,
  });

  factory ProductAttribute.fromJson(Map<String, dynamic> json) => ProductAttribute(
        id: JsonUtils.parseIntFromJson(json["id"]),
        name: JsonUtils.parseStringFromJson(json["name"]),
        colorCode: JsonUtils.parseStringFromJson(json["color_code"]),
        slug: JsonUtils.parseStringFromJson(json["slug"]),
        createdAt: JsonUtils.parseDatetimeFromJson(json["created_at"]),
        updatedAt: JsonUtils.parseDatetimeFromJson(json["updated_at"]),
        laravelThroughKey: JsonUtils.parseIntFromJson(json["laravel_through_key"]),
        sizeCode: JsonUtils.parseStringFromJson(json["size_code"]),
      );
}
