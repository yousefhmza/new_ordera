import 'package:ecommerce/core/services/responsive_service.dart';
import 'package:ecommerce/modules/categories/models/responses/category_model.dart';
import 'package:ecommerce/modules/product/models/responses/in_list_product_model.dart';
import 'package:ecommerce/modules/product/models/responses/product_model.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../modules/account/models/responses/user_model.dart';
import '../../modules/categories/view/widgets/category_chip/category_chip_1.dart';
import '../../modules/categories/view/widgets/category_chip/category_chip_2.dart';
import '../../modules/categories/view/widgets/category_chip/category_chip_3.dart';
import '../../modules/categories/view/widgets/category_chip/category_chip_4.dart';
import '../../modules/categories/view/widgets/category_chip/category_chip_5.dart';
import '../../modules/categories/view/widgets/category_chip/category_chip_6.dart';
import '../../modules/categories/view/widgets/category_chip/category_chip_7.dart';
import '../../modules/categories/view/widgets/category_chip/category_chip_8.dart';
import '../../modules/categories/view/widgets/category_chip/category_chip_9.dart';
import '../../modules/categories/view/widgets/category_chip/category_chip_10.dart';

import '../../modules/home/view/components/home_appbar/home_appbar_1.dart';
import '../../modules/home/view/components/home_appbar/home_appbar_2.dart';
import '../../modules/home/view/components/home_appbar/home_appbar_3.dart';
import '../../modules/home/view/components/home_appbar/home_appbar_4.dart';
import '../../modules/home/view/components/home_appbar/home_appbar_5.dart';
import '../../modules/home/view/components/home_appbar/home_appbar_6.dart';
import '../../modules/home/view/components/home_appbar/home_appbar_7.dart';
import '../../modules/home/view/components/home_appbar/home_appbar_8.dart';
import '../../modules/home/view/components/home_appbar/home_appbar_9.dart';
import '../../modules/home/view/components/home_appbar/home_appbar_10.dart';

import '../../modules/product/views/widgets/product_item/product_item_10.dart';
import '../../modules/product/views/widgets/product_item/product_item_1.dart';
import '../../modules/product/views/widgets/product_item/product_item_2.dart';
import '../../modules/product/views/widgets/product_item/product_item_3.dart';
import '../../modules/product/views/widgets/product_item/product_item_4.dart';
import '../../modules/product/views/widgets/product_item/product_item_5.dart';
import '../../modules/product/views/widgets/product_item/product_item_6.dart';
import '../../modules/product/views/widgets/product_item/product_item_7.dart';
import '../../modules/product/views/widgets/product_item/product_item_8.dart';
import '../../modules/product/views/widgets/product_item/product_item_9.dart';
import 'constants.dart';

Rx<UserModel?> currentUser = Rx(null);

final Settings settings = Settings(bnb: 1, productItem: 1, categoryChip: 1, appbar: 1);

class Settings {
  int bnb;
  int productItem;
  double? productItemHeight;
  double? productListViewHeight;
  double? productInGridAspectRatio;
  int? productInGridCrossAxisCount;
  int categoryChip;
  double? categoryChipsListViewHeight;
  double? categoryChipsSpacing;
  int appbar;

  Settings({
    required this.bnb,
    required this.productItem,
    required this.categoryChip,
    required this.appbar,
  });

  void copyWith({
    int? bnb,
    int? productItem,
    int? categoryChip,
    int? appbar,
  }) {
    this.bnb = bnb ?? this.bnb;
    this.productItem = productItem ?? this.productItem;
    this.categoryChip = categoryChip ?? this.categoryChip;
    this.appbar = appbar ?? this.appbar;
  }

  Widget get getBNB {
    switch (bnb) {
      case 1:
        return Container();
      case 2:
        return Container();
      case 3:
        return Container();
      case 4:
        return Container();
      case 5:
        return Container();
      case 6:
        return Container();
      case 7:
        return Container();
      case 8:
        return Container();
      case 9:
        return Container();
      case 10:
        return Container();
      default:
        return Container();
    }
  }

  void initProductItemValues() {
    switch (productItem) {
      case 1:
        productItemHeight = 227.v;
        productListViewHeight = 227.v;
        productInGridAspectRatio = 0.7;
        productInGridCrossAxisCount = 2;
        break;
      case 2:
        productItemHeight = 240.v;
        productListViewHeight = 260.v;
        productInGridAspectRatio = 1.1;
        productInGridCrossAxisCount = 1;

        break;
      case 3:
        productItemHeight = 110.v;
        productListViewHeight = 130.v;
        productInGridAspectRatio = 3.0;
        productInGridCrossAxisCount = 1;

        break;
      case 4:
        productItemHeight = 110.v;
        productListViewHeight = 130.v;
        productInGridAspectRatio = 0.76;
        productInGridCrossAxisCount = 1;

        break;
      case 5:
        productItemHeight = 250.v;
        productListViewHeight = 270.v;
        productInGridAspectRatio = 0.76;
        productInGridCrossAxisCount = 2;

        break;
      case 6:
        productItemHeight = 240.v;
        productListViewHeight = 260.v;
        productInGridAspectRatio = 0.85;
        productInGridCrossAxisCount = 2;
        break;
      case 7:
        productItemHeight = 227.v;
        productListViewHeight = 227.v;
        productInGridAspectRatio = 0.7;
        productInGridCrossAxisCount = 2;
        break;
      case 8:
        productItemHeight = 250.v;
        productListViewHeight = 270.v;
        productInGridAspectRatio = 0.75;
        productInGridCrossAxisCount = 2;
        break;
      case 9:
        productItemHeight = 270.v;
        productListViewHeight = 290.v;
        productInGridAspectRatio = 0.75;
        productInGridCrossAxisCount = 2;
        break;
      case 10:
        productItemHeight = 240.v;
        productListViewHeight = 260.v;
        productInGridAspectRatio = 1.1;
        productInGridCrossAxisCount = 1;
        break;
    }
  }

  Widget getProductItem({required InListProductModel product, bool dynamicDimensions = false}) {
    switch (productItem) {
      case 1:
        return ProductItem1(product, dynamicDimensions: dynamicDimensions);
      case 2:
        return ProductItem2(product, dynamicDimensions: dynamicDimensions);
      case 3:
        return ProductItem3(product, dynamicDimensions: dynamicDimensions);
      case 4:
        return ProductItem4(product, dynamicDimensions: dynamicDimensions);
      case 5:
        return ProductItem5(product, dynamicDimensions: dynamicDimensions);
      case 6:
        return ProductItem6(product, dynamicDimensions: dynamicDimensions);
      case 7:
        return ProductItem7(product, dynamicDimensions: dynamicDimensions);
      case 8:
        return ProductItem8(product, dynamicDimensions: dynamicDimensions);
      case 9:
        return ProductItem9(product, dynamicDimensions: dynamicDimensions);
      case 10:
        return ProductItem10(product, dynamicDimensions: dynamicDimensions);
      default:
        return Container();
    }
  }

  void initCategoryChipsValues() {
    switch (categoryChip) {
      case 1:
        categoryChipsListViewHeight = 96.v;
        break;
      case 2:
        categoryChipsListViewHeight = 32.v;
        break;
      case 3:
        categoryChipsListViewHeight = 32.v;
        categoryChipsSpacing = 24.h;
        break;
      // categoryChipsListViewHeight = 48.v;
      // break;
      case 4:
        categoryChipsListViewHeight = 32.v;
        categoryChipsSpacing = 20.h;
        break;
      case 5:
        categoryChipsListViewHeight = 32.v;
        categoryChipsSpacing = 24.h;
        break;
      case 6:
        categoryChipsListViewHeight = 40.v;
        categoryChipsSpacing = 20.h;
        break;
      case 7:
        categoryChipsListViewHeight = 64.v;
        break;
      case 8:
        categoryChipsListViewHeight = 24.v;
        categoryChipsSpacing = 24.h;
        break;
      case 9:
        categoryChipsListViewHeight = 40.v;
        categoryChipsSpacing = 20.h;
        break;
      // categoryChipsListViewHeight = 40.v;
      // break;
      case 10:
        categoryChipsListViewHeight = 24.v;
        categoryChipsSpacing = 24.h;
        break;
      // categoryChipsListViewHeight = 40.v;
      // break;
    }
  }

  Widget getCategoryChip({required CategoryModel category, required bool isSelected, required VoidCallback onTap}) {
    switch (categoryChip) {
      case 1:
        return CategoryChip1(category: category, isSelected: isSelected, onTap: onTap);
      case 2:
        return CategoryChip2(category: category, isSelected: isSelected, onTap: onTap);
      case 3:
        return CategoryChip5(category: category, isSelected: isSelected, onTap: onTap);
      case 4:
        return CategoryChip4(category: category, isSelected: isSelected, onTap: onTap);
      case 5:
        return CategoryChip5(category: category, isSelected: isSelected, onTap: onTap);
      case 6:
        return CategoryChip6(category: category, isSelected: isSelected, onTap: onTap);
      case 7:
        return CategoryChip7(category: category, isSelected: isSelected, onTap: onTap);
      case 8:
        return CategoryChip8(category: category, isSelected: isSelected, onTap: onTap);
      case 9:
        return CategoryChip6(category: category, isSelected: isSelected, onTap: onTap);
      case 10:
        return CategoryChip8(category: category, isSelected: isSelected, onTap: onTap);
      default:
        return Container();
    }
  }

  Widget get getAppbar {
    switch (appbar) {
      case 1:
        return HomeAppbar1();
      case 2:
        return HomeAppbar2();
      case 3:
        return HomeAppbar3();
      case 4:
        return HomeAppbar4();
      case 5:
        return HomeAppbar5();
      case 6:
        return HomeAppbar6();
      case 7:
        return HomeAppbar7();
      case 8:
        return HomeAppbar8();
      case 9:
        return HomeAppbar9();
      case 10:
        return HomeAppbar10();
      default:
        return Container();
    }
  }
}
