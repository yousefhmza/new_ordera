import 'package:flutter/material.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

import '../resources/resources.dart';
import '../view/views.dart';

class Alerts {
  // static void showSnackBar(String message, {bool forError = true, Duration duration = Time.t2s}) {
  //   if (Get.isSnackbarOpen) Get.closeAllSnackbars();
  //   Get.showSnackbar(
  //     GetSnackBar(
  //       duration: duration,
  //       backgroundColor: forError ? AppColors.mediumRed : AppColors.black,
  //       message: message,
  //       animationDuration: Time.t300ms,
  //       borderRadius: AppSize.s6,
  //       margin: const EdgeInsets.all(AppPadding.p16),
  //     ),
  //   );
  // }

  // static void showActionSnackBar({
  //   required String message,
  //   String actionText = AppStrings.retry,
  //   required VoidCallback onActionPressed,
  //   Duration duration = Time.longTime,
  //   bool forError = true,
  // }) {
  //   if (Get.isSnackbarOpen) Get.back();
  //   Get.showSnackbar(
  //     GetSnackBar(
  //       duration: duration,
  //       backgroundColor: forError ? AppColors.mediumRed : AppColors.black,
  //       message: message,
  //       animationDuration: Time.t300ms,
  //       borderRadius: AppSize.s6,
  //       margin: const EdgeInsets.all(AppPadding.p16),
  //       mainButton: CustomTextButton(
  //         text: actionText.tr,
  //         onPressed: () {
  //           Get.back();
  //           onActionPressed();
  //         },
  //         textColor: AppColors.white,
  //       ),
  //     ),
  //   );
  // }

  static void showToast(
    String message, [
    Toast length = Toast.LENGTH_SHORT,
    ToastGravity toastGravity = ToastGravity.BOTTOM,
  ]) {
    Fluttertoast.showToast(
      msg: message,
      toastLength: length,
      gravity: toastGravity,
      timeInSecForIosWeb: 3,
      fontSize: FontSize.s14,
    );
  }
}
