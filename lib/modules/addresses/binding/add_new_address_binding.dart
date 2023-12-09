import '../controller/add_new_address_controller.dart';
import 'package:get/get.dart';
import '../../../di_container.dart';

class AddNewAddressBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => sl<AddNewAddressController>());
  }
}
