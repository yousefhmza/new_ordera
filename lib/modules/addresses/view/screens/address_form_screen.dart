import 'package:ecommerce/config/navigation/navigation.dart';
import 'package:ecommerce/core/resources/resources.dart';
import 'package:ecommerce/core/services/responsive_service.dart';
import 'package:ecommerce/core/utils/validators.dart';
import 'package:ecommerce/modules/addresses/view/components/address_field_component.dart';
import 'package:flutter/services.dart';
import 'package:get/get.dart';

import '../../../../core/view/views.dart';
import 'package:flutter/material.dart';

class AddressFormScreen extends StatelessWidget {
  const AddressFormScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppbar(
        // title: controller.isAddingAddress
        title: false
            ? AppStrings.lblAddNewAddress.tr : AppStrings.lblEditAddress.tr,
      ),
      body: Form(
        // key: controller.formKey,
        child: CustomScrollView(
          slivers: [
            const VerticalSpace.sliver(AppSize.s24),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: AppPadding.p24),
              sliver: SliverToBoxAdapter(
                child: AddressFieldComponent(
                  title: AppStrings.lblType.tr,
                  desc: AppStrings.lblPlaceType.tr,
                  field: CustomDropDownField(
                    items: [
                      // DropdownMenuItem(value: AddressType.home, child: CustomText(AddressType.home.text)),
                      // DropdownMenuItem(value: AddressType.workplace, child: CustomText(AddressType.workplace.text))
                    ],
                    // value: controller.addressBody.addressType,
                    // validator: (value) => Validators.required(value?.name),
                    // onChanged: (value) => controller.addressBody.copyWith(addressType: value),
                    hintText: AppStrings.lblHome.tr,
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
                    // initialValue: controller.addressBody.address,
                    hintText: AppStrings.lblTypeAddress.tr,
                    keyBoardType: TextInputType.streetAddress,
                    // onChanged: (value) => controller.addressBody.copyWith(address: value),
                    // validator: Validators.required,
                    suffix: InkWell(
                      onTap: () => Get.toNamed(Routes.chooseOnMapScreen),
                      child: const CustomIcon.svg(AppImages.imgUnionPrimary, size: AppSize.s20),
                    ),
                  ),
                ),
              ),
            ),
            VerticalSpace.sliver(28.v),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: AppPadding.p24),
              sliver: SliverToBoxAdapter(
                child: AddressFieldComponent(
                  title: AppStrings.lblHouseNo.tr,
                  desc: AppStrings.msgTypeYourHouse.tr,
                  field: CustomTextField(
                    // initialValue: controller.addressBody.houseNumber,
                    hintText: AppStrings.msgYourHomeNumber.tr,
                    keyBoardType: TextInputType.number,
                    formatters: [FilteringTextInputFormatter.digitsOnly],
                    // onChanged: (value) => controller.addressBody.copyWith(houseNumber: value),
                    // validator: Validators.required,
                  ),
                ),
              ),
            ),
            VerticalSpace.sliver(28.v),
            SliverPadding(
              padding: const EdgeInsets.symmetric(horizontal: AppPadding.p24),
              sliver: SliverToBoxAdapter(
                child: AddressFieldComponent(
                  title: AppStrings.lblLandmark.tr,
                  desc: AppStrings.msgTypeALandmark.tr,
                  field: CustomTextField(
                    // initialValue: controller.addressBody.landmark,
                    hintText: AppStrings.lblLandmark.tr,
                    textInputAction: TextInputAction.done,
                    // onChanged: (value) => controller.addressBody.copyWith(landmark: value),
                    // validator: Validators.required,
                  ),
                ),
              ),
            ),
            SliverFillRemaining(
              hasScrollBody: false,
              child: Column(
                children: [
                  const Spacer(),
                  CustomButton(
                    height: AppSize.s40.v,
                    // text: controller.isAddingAddress
                    text: false
                        ? AppStrings.lblAdd.tr : AppStrings.lblEdit.tr,
                    margin: const EdgeInsets.all(AppPadding.p24),
                    onPressed: () {
                      // if (!controller.formKey.currentState!.validate()) return;
                      // controller.isAddingAddress ? controller.addNewAddress() : controller.updateAddress();
                    },
                  )
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
