import 'package:get/get.dart';
import 'package:flutter/material.dart';

class SignUpController extends GetxController {
  final GlobalKey<FormState> formKey = GlobalKey<FormState>();
  final TextEditingController fullNameController = TextEditingController();
  final TextEditingController emailController = TextEditingController();
  final TextEditingController mobileNoController = TextEditingController();
  final TextEditingController passwordController = TextEditingController();
  final TextEditingController passwordController1 = TextEditingController();
  Rx<bool> isShowPassword = true.obs;
  Rx<bool> isShowPassword1 = true.obs;

  @override
  void onClose() {
    super.onClose();
    fullNameController.dispose();
    emailController.dispose();
    mobileNoController.dispose();
    passwordController.dispose();
    passwordController1.dispose();
  }
}
