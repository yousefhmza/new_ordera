import 'package:ecommerce/config/navigation/navigation.dart';
import 'package:ecommerce/core/resources/resources.dart';
import 'package:ecommerce/core/services/responsive_service.dart';
import 'package:ecommerce/core/view/views.dart';
import 'package:ecommerce/core/view/widgets/main_appbar.dart';
import 'package:ecommerce/modules/addresses/view/widgets/address_card.dart';
import 'package:get/get.dart';

import '../../../../config/theme/theme.dart';
import '../../controller/addresses_controller.dart';
import 'package:flutter/material.dart';

class AddressesScreen extends GetWidget<AddressesController> {
  const AddressesScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppbar(title: AppStrings.lblAddresses.tr),
      body: SingleChildScrollView(
        padding: const EdgeInsets.all(AppPadding.p24),
        child: Column(
          children: [
            ListView.separated(
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemBuilder: (context, index) => AddressCard(
                address: "الرياض - شارع الأشبال حي الزيارة رقم 95",
                addressType: AppStrings.lblHome.tr,
                onTap: () {},
              ),
              separatorBuilder: (context, index) => Divider(color: AppColors.gray300, height: AppSize.s40.v),
              itemCount: 2,
            ),
            VerticalSpace(AppSize.s32.v),
            CustomButton(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                crossAxisAlignment: CrossAxisAlignment.center,
                children: [
                  CustomText(
                    AppStrings.lblAddNewAddress.tr,
                    style: CustomTextStyles.titleSmallWhiteA700,
                  ),
                  Container(
                    margin: EdgeInsets.only(left: 10.h),
                    child: CustomImage(
                      image: AppImages.imgFireflyStrokePlus,
                      height: 24.adaptSize,
                      width: 24.adaptSize,
                    ),
                  ),
                ],
              ),
              onPressed: () => Get.toNamed(Routes.addNewAddressScreen),
            ),
          ],
        ),
      ),
    );
  }
}
