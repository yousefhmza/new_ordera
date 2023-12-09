import 'package:flutter/material.dart';
import 'package:get/get.dart';

class OrderController extends GetxController {
  final TextEditingController promoCodeController = TextEditingController();
  final TextEditingController notesController = TextEditingController();

  @override
  void onClose() {
    super.onClose();
    promoCodeController.dispose();
    notesController.dispose();
  }
}
