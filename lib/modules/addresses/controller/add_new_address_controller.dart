import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AddNewAddressController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController addressController = TextEditingController();
  final TextEditingController yourHomeNumberController = TextEditingController();
  final TextEditingController landmarkController = TextEditingController();

  @override
  void onClose() {
    super.onClose();
    addressController.dispose();
    yourHomeNumberController.dispose();
    landmarkController.dispose();
  }
}
