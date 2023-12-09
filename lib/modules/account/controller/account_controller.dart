import 'package:flutter/material.dart';
import 'package:get/get.dart';

class AccountController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController mobileNoController = TextEditingController();

  @override
  void onClose() {
    super.onClose();
    fullNameController.dispose();
    emailController.dispose();
    mobileNoController.dispose();
  }
}
