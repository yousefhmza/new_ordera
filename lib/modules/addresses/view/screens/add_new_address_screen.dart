import 'package:ecommerce/config/navigation/navigation.dart';
import 'package:ecommerce/core/resources/resources.dart';
import 'package:ecommerce/core/services/responsive_service.dart';
import 'package:ecommerce/core/utils/validators.dart';
import 'package:get/get.dart';

import '../../../../config/theme/theme.dart';
import '../../../../core/view/views.dart';
import '../../controller/add_new_address_controller.dart';
import 'package:flutter/material.dart';

class AddNewAddressScreen extends GetWidget<AddNewAddressController> {
  const AddNewAddressScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: MainAppbar(title: AppStrings.lblAddNewAddress.tr),
      body: Form(
        key: controller.formKey,
        child: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 17.v),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text("lbl_type".tr, style: CustomTextStyles.titleSmallBold),
              SizedBox(height: 3.v),
              Text("lbl_place_type".tr, style: CustomTextStyles.bodySmallGray600),
              SizedBox(height: 2.v),
              CustomDropDownField(
                items: [],
                hintText: AppStrings.lblHome.tr,
              ),
              SizedBox(height: 28.v),
              Text("lbl_address".tr, style: CustomTextStyles.titleSmallBold),
              SizedBox(height: 4.v),
              Text("lbl_type_address".tr, style: CustomTextStyles.bodySmallGray600),
              SizedBox(height: 2.v),
              CustomTextFormField(
                controller: controller.addressController,
                hintText: "lbl_type_address".tr,
                suffix: InkWell(
                  onTap: () => Get.toNamed(Routes.chooseOnMapScreen),
                  child: Container(
                    padding: EdgeInsets.symmetric(horizontal: 2.h, vertical: 1.v),
                    margin: EdgeInsets.fromLTRB(30.h, 10.v, 15.h, 10.v),
                    decoration: const BoxDecoration(color: AppColors.white),
                    child: CustomImage(image: AppImages.imgUnionPrimary, height: 21.v, width: 19.h),
                  ),
                ),
                suffixConstraints: BoxConstraints(maxHeight: 45.v),
              ),
              SizedBox(height: 28.v),
              Text("lbl_house_no".tr, style: CustomTextStyles.titleSmallBold),
              SizedBox(height: 4.v),
              Text("msg_type_your_house".tr, style: CustomTextStyles.bodySmallGray600),
              SizedBox(height: 2.v),
              CustomTextFormField(
                controller: controller.yourHomeNumberController,
                hintText: "msg_your_home_number".tr,
                textInputType: TextInputType.number,
                validator: Validators.numberValidator,
                contentPadding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 14.v),
              ),
              SizedBox(height: 28.v),
              Text("lbl_landmark".tr, style: CustomTextStyles.titleSmallBold),
              SizedBox(height: 4.v),
              Text("msg_type_a_landmark".tr, style: CustomTextStyles.bodySmallGray600),
              SizedBox(height: 2.v),
              CustomTextFormField(
                controller: controller.landmarkController,
                hintText: AppStrings.lblLandmark.tr,
                textInputAction: TextInputAction.done,
                contentPadding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 14.v),
              ),
              SizedBox(height: 5.v)
            ],
          ),
        ),
      ),
      bottomNavigationBar: CustomButton(
        height: AppSize.s40.v,
        text: AppStrings.lblAdd.tr,
        margin: const EdgeInsets.all(24),
        onPressed: () => Get.toNamed(Routes.chooseOnMapScreen),
      ),
    );
  }
}
