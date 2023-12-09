import 'package:ecommerce/core/view/views.dart';
import 'package:ecommerce/modules/layout/view/components/bnb.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';

import '../../controller/layout_controller.dart';
import '../components/bnb_1.dart';

class LayoutScreen extends GetWidget<LayoutController> {
  const LayoutScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Obx(() => controller.screens[controller.selectedIndex.value]),
      bottomNavigationBar: BNB1(),
    );
  }
}
