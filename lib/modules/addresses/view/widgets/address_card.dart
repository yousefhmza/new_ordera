import 'package:ecommerce/core/resources/resources.dart';
import 'package:ecommerce/core/services/responsive_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../config/theme/theme.dart';
import '../../../../core/view/views.dart';

class AddressCard extends StatelessWidget {
  final String address;
  final String addressType;
  final VoidCallback onTap;

  const AddressCard({required this.address, required this.addressType, required this.onTap, super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: onTap,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(address, style: CustomTextStyles.labelLargeBlack900_1.copyWith(color: AppColors.black)),
              SizedBox(height: 2.v),
              Text(addressType, style: Get.theme.textTheme.bodySmall!.copyWith(color: AppColors.black))
            ],
          ),
          CustomImage(
            image: AppImages.imgIconChevronLeft,
            height: 24.adaptSize,
            width: 24.adaptSize,
            margin: EdgeInsets.only(top: 8.v, bottom: 7.v),
          )
        ],
      ),
    );
  }
}
