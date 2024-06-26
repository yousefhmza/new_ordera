import '../../../di_container.dart';
import '../controller/account_controller.dart';
import 'package:get/get.dart';

class AccountBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => sl<AccountController>());
  }
}
