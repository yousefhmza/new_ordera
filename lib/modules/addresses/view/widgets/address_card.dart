import 'package:ecommerce/config/navigation/navigation.dart';
import 'package:ecommerce/core/resources/resources.dart';
import 'package:ecommerce/core/services/responsive_service.dart';
import 'package:ecommerce/modules/addresses/controller/addresses_controller.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../config/theme/theme.dart';
import '../../../../core/view/views.dart';

class AddressCard extends GetWidget<AddressesController> {
  final int addressNumber;
  final String formattedAddress;

  const AddressCard({required this.addressNumber, required this.formattedAddress, super.key});

  @override
  Widget build(BuildContext context) {
    final List<String> splitAddress = formattedAddress.split(" | ");
    return InkWell(
      onTap: () {
        // if (controller.fromOrderScreen) Get.back(result: splitAddress[1]);
      },
      child: Row(
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(splitAddress[1], style: CustomTextStyles.labelLargeBlack900_1.copyWith(color: AppColors.black)),
              SizedBox(height: 2.v),
              Text(
                "splitAddress[0].toAddressType.text",
                style: Get.theme.textTheme.bodySmall!.copyWith(color: AppColors.black),
              )
            ],
          ),
          const Spacer(),
          // Obx(
          //   () => controller.deletingAddressNumber.value == addressNumber
          //       ? const LoadingSpinner(hasSmallRadius: true)
          //       : ,
          // ),
          InkWell(
            // onTap: () => showDialog(
            //   context: context,
            //   builder: (context) => ConfirmationDialog(
            //     title: AppStrings.msgSureDeletingAddress.tr,
            //     onYes: () => controller.deleteAddress(addressNumber),
            //   ),
            // ),
            child: const Padding(
              padding: EdgeInsets.all(AppPadding.p8),
              child: CustomIcon.svg(AppImages.imgIconTrash2),
            ),
          ),
          const HorizontalSpace(AppSize.s8),
          InkWell(
            onTap: () => Get.toNamed(
              Routes.addressFormScreen,
              // arguments: {
              //   "address_body": AddressBody(
              //     addressNumber: addressNumber,
              //     addressType: splitAddress[0].toAddressType,
              //     address: splitAddress[1],
              //     houseNumber: splitAddress[2],
              //     landmark: splitAddress[3],
              //   ),
              // },
            ),
            child: const Padding(
              padding: EdgeInsets.all(AppPadding.p6),
              // child: CustomIcon.svg(AppIcons.edit, size: AppSize.s28),
            ),
          ),
        ],
      ),
    );
  }
}
