import 'package:get/get.dart';

import '../extensions/non_null_extensions.dart';
import '../resources/resources.dart';
import 'validation_functions.dart';

class Validators {
  static String? numberValidator(String? input) {
    if (!isNumeric(input)) {
      return AppStrings.errMsgPleaseEnterValidNumber.tr;
    }
    return null;
  }

  static String? emailValidator(String? input) {
    return !RegExp(r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+").hasMatch(input.orEmpty)
        ? AppStrings.errMsgPleaseEnterValidEmail.tr
        : null;
  }

  static String? passwordValidator(String? input, {bool isRequired = true}) {
    if (input == null || (!isValidPassword(input, isRequired: isRequired))) {
      return AppStrings.errMsgPleaseEnterValidPassword.tr;
    }
    return null;
  }

  static String? nameValidator(String? input) {
    if (!isText(input)) {
      return AppStrings.errMsgPleaseEnterValidText.tr;
    }
    return null;
  }

//
// static String? notEmptyIntValidator(int? input) {
//   return input.orZero == 0 ? AppStrings.requiredValidator : null;
// }
//
  static String? mobileNumberValidator(String? input) {
    if (!isValidPhone(input)) {
      return "err_msg_please_enter_valid_phone_number".tr;
    }
    return null;
  }
}
