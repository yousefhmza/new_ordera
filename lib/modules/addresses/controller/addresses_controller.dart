import 'package:get/get.dart';

import 'package:ecommerce/modules/addresses/models/responses/address_model.dart';
import '../../../core/utils/alerts.dart';
import '../repos/addresses_repo.dart';

class AddressesController extends GetxController {
  final AddressesRepo _addressesRepo;

  AddressesController(this._addressesRepo);

  late final bool fromCheckoutScreen;
  RxBool isLoading = false.obs;
  RxList<Address> addresses = RxList([]);
  RxInt deletingAddressNumber = 0.obs;

  @override
  void onInit() {
    super.onInit();
    getAddresses();
    fromCheckoutScreen = Get.arguments["from_checkout_screen"];
  }

  Future<void> getAddresses() async {
    isLoading(true);
    final result = await _addressesRepo.getAddresses();
    result.fold(
      (failure) => Alerts.showSnackBar(message: failure.message, onActionPressed: getAddresses),
      (addresses) => this.addresses(addresses),
    );
    isLoading(false);
  }

  Future<void> deleteAddress(int id) async {
    deletingAddressNumber(id);
    final result = await _addressesRepo.deleteAddress(id);
    result.fold(
      (failure) => Alerts.showSnackBar(message: failure.message),
      (_) {
        addresses.removeWhere((element) => element.id == id);
        addresses.refresh();
      },
    );
    deletingAddressNumber(0);
  }
}
