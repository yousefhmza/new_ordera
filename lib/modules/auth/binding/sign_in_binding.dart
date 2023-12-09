import '../controller/sign_in_controller.dart';
import '../../../di_container.dart';
import 'package:get/get.dart';

class SignInBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => sl<SignInController>());
  }
}
