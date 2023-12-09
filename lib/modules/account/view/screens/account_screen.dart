import 'package:ecommerce/core/resources/resources.dart';
import 'package:ecommerce/core/services/responsive_service.dart';
import 'package:ecommerce/core/utils/validators.dart';
import 'package:ecommerce/core/view/widgets/main_appbar.dart';
import 'package:get/get.dart';

import '../../../../config/theme/theme.dart';
import '../../../../core/view/views.dart';
import '../../controller/account_controller.dart';
import 'package:flutter/material.dart';

class AccountScreen extends GetWidget<AccountController> {
  const AccountScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      resizeToAvoidBottomInset: false,
      appBar: MainAppbar(title: AppStrings.lblAccount.tr),
      body: Form(
        key: controller.formKey,
        child: Padding(
          padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 16.v),
          child: Column(
            children: [
              SizedBox(
                height: 77.v,
                width: 75.h,
                child: Stack(
                  alignment: Alignment.bottomRight,
                  children: [
                    CustomImage(
                      image: AppImages.imgEllipse1075x75,
                      height: 75.adaptSize,
                      width: 75.adaptSize,
                      borderRadius: AppSize.s250,
                    ),
                    Padding(
                      padding: EdgeInsets.only(right: 1.h),
                      child: CustomIconButton(
                        height: 24.adaptSize,
                        width: 24.adaptSize,
                        padding: EdgeInsets.all(2.h),
                        decoration: IconButtonStyleHelper.fillPrimary,
                        alignment: Alignment.bottomRight,
                        child: CustomImage(image: AppImages.imgAddButton),
                      ),
                    )
                  ],
                ),
              ),
              SizedBox(height: 32.v),
              CustomTextFormField(
                controller: controller.fullNameController,
                hintText: "lbl_full_name".tr,
                suffix: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 13.v, 15.h, 13.v),
                  child: CustomImage(image: AppImages.imgIconUser, height: 24.adaptSize, width: 24.adaptSize),
                ),
                suffixConstraints: BoxConstraints(maxHeight: 50.v),
                validator: Validators.nameValidator,
                borderDecoration: TextFormFieldStyleHelper.outlineGrayTL10,
              ),
              SizedBox(height: 24.v),
              CustomTextFormField(
                controller: controller.emailController,
                hintText: "msg_mohamedali_gmail_com".tr,
                textInputType: TextInputType.emailAddress,
                suffix: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 13.v, 15.h, 13.v),
                  child: CustomImage(image: AppImages.imgIconMail, height: 24.adaptSize, width: 24.adaptSize),
                ),
                suffixConstraints: BoxConstraints(maxHeight: 50.v),
                validator: Validators.emailValidator,
              ),
              SizedBox(height: 24.v),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    width: 108.h,
                    padding: EdgeInsets.symmetric(vertical: 12.v),
                    decoration: AppDecoration.outlineGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Padding(
                          padding: EdgeInsets.symmetric(vertical: 3.v),
                          child: Text(AppStrings.lbl20.tr, style: CustomTextStyles.bodyMediumGray40001),
                        ),
                        CustomImage(image: AppImages.imgFrame159Gray40001, height: 24.v, width: 1.h),
                        CustomImage(image: AppImages.imgExpandDown, height: 24.adaptSize, width: 24.adaptSize)
                      ],
                    ),
                  ),
                  CustomTextFormField(
                    width: 202.h,
                    controller: controller.mobileNoController,
                    hintText: "lbl_1113324289".tr,
                    textInputAction: TextInputAction.done,
                    textInputType: TextInputType.phone,
                    validator: Validators.mobileNumberValidator,
                    contentPadding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 16.v),
                  )
                ],
              ),
              Spacer(),
              CustomButton(
                isOutlined: true,
                textColor: AppColors.primary,
                text: AppStrings.lblChangePassword.tr,
                onPressed: () {},
              ),
              SizedBox(height: 16.v),
              CustomButton(
                text: AppStrings.lblSave.tr,
                onPressed: () {},
              ),
              SizedBox(height: 28.v)
            ],
          ),
        ),
      ),
    );
  }
}
