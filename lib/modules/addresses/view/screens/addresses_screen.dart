import 'package:ecommerce/config/navigation/navigation.dart';
import 'package:ecommerce/core/resources/resources.dart';
import 'package:ecommerce/core/utils/globals.dart';
import 'package:ecommerce/core/view/views.dart';
import 'package:ecommerce/modules/addresses/view/widgets/address_card.dart';
import 'package:get/get.dart';

import '../../controller/addresses_controller.dart';
import 'package:flutter/material.dart';

class AddressesScreen extends GetWidget<AddressesController> {
  const AddressesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppbar(title: AppStrings.lblAddresses.tr),
      body: Obx(
            () {
          currentUser.value;
          return Padding(
            padding: const EdgeInsets.all(AppPadding.p24),
            child: Column(
              children: [
                // if (currentUser.value!.shipping.address1.isNotEmpty)
                  AddressCard(
                    key: UniqueKey(),
                    addressNumber: 1,
                    formattedAddress: "currentUser.value!.shipping.address1",
                  ),
                // if (currentUser.value!.shipping.address1.isNotEmpty && currentUser.value!.shipping.address2.isNotEmpty)
                  const Divider(height: AppSize.s36, color: AppColors.gray200),
                // if (currentUser.value!.shipping.address2.isNotEmpty)
                  AddressCard(
                    key: UniqueKey(),
                    addressNumber: 2,
                    formattedAddress: "currentUser.value!.shipping.address2",
                  ),
                const Spacer(),
                // if (currentUser.value!.shipping.address1.isEmpty || currentUser.value!.shipping.address2.isEmpty)
                  SafeArea(
                    child: CustomButton(
                      padding: const EdgeInsets.all(AppPadding.p12),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                          CustomText(
                            AppStrings.lblAddNewAddress.tr,
                            style: const TextStyle(color: AppColors.white, fontWeight: FontWeightManager.bold),
                          ),
                          const HorizontalSpace(AppSize.s4),
                          const CustomIcon.svg(AppImages.imgAddButton),
                        ],
                      ),
                      onPressed: () => Get.toNamed(Routes.addressFormScreen),
                    ),
                  ),
              ],
            ),
          );
        },
      ),
    );
  }
}
