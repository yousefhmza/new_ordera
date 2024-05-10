import 'package:ecommerce/config/navigation/navigation.dart';
import 'package:ecommerce/core/resources/resources.dart';
import 'package:ecommerce/core/services/responsive_service.dart';
import 'package:ecommerce/core/utils/validators.dart';
import 'package:ecommerce/modules/addresses/controller/address_form_controller.dart';
import 'package:ecommerce/modules/addresses/view/components/address_field_component.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../../core/view/views.dart';
import 'package:flutter/material.dart';

class AddressFormScreen extends GetWidget<AddressFormController> {
  const AddressFormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppbar(
        title: AppStrings.lblEditAddress.tr,
      ),
      body: Form(
        key: controller.formKey,
        child: CustomScrollView(
          slivers: [
            const VerticalSpace.sliver(AppSize.s24),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: AppPadding.p24),
              sliver: SliverToBoxAdapter(
                child: AddressFieldComponent(
                  title: AppStrings.addressName.tr,
                  desc: AppStrings.typeAddressName.tr,
                  field: CustomTextField(
                    initialValue: controller.addressBody.shippingAddressName,
                    hintText: AppStrings.typeAddressName.tr,
                    keyBoardType: TextInputType.streetAddress,
                    onChanged: (value) => controller.addressBody.copyWith(shippingAddressName: value),
                    validator: Validators.required,
                  ),
                ),
              ),
            ),
            VerticalSpace.sliver(28.v),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: AppPadding.p24),
              sliver: SliverToBoxAdapter(
                child: AddressFieldComponent(
                  title: AppStrings.lblAddress.tr,
                  desc: AppStrings.lblTypeAddress.tr,
                  field: CustomTextField(
                    hintText: AppStrings.lblTypeAddress.tr,
                    controller: controller.addressTextController,
                    keyBoardType: TextInputType.streetAddress,
                    onChanged: (value) => controller.addressBody.copyWith(address: value),
                    validator: Validators.required,
                    suffix: InkWell(
                      onTap: () async {
                        final address = await Get.toNamed(Routes.chooseOnMapScreen);
                        if (address != null) {
                          controller.addressTextController.text = address;
                          controller.addressBody.copyWith(address: address);
                        }
                      },
                      child: const CustomIcon.svg(AppImages.imgUnionPrimary, size: AppSize.s20),
                    ),
                  ),
                ),
              ),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  const Spacer(),
                  Obx(
                    () => CustomButton(
                      isLoading: controller.isLoading.value,
                      height: AppSize.s40.v,
                      text: AppStrings.confirm.tr,
                      margin: const EdgeInsets.all(AppPadding.p24),
                      onPressed: () {
                        if (!controller.formKey.currentState!.validate()) return;
                        controller.addOrUpdateAddress();
                      },
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
