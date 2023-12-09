import 'package:ecommerce/core/resources/resources.dart';
import 'package:ecommerce/core/services/responsive_service.dart';
import 'package:ecommerce/core/view/views.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../config/theme/theme.dart';
import '../../../../core/utils/validators.dart';
import '../../controller/sign_up_controller.dart';

class SignUpScreen extends GetWidget<SignUpController> {
  const SignUpScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return StatusBar(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Form(
            key: controller.formKey,
            child: Container(
              width: double.maxFinite,
              padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 22.v),
              child: Column(
                children: [
                  SizedBox(height: 5.v),
                  Container(
                    width: 96.h,
                    margin: EdgeInsets.symmetric(horizontal: 115.h),
                    padding: EdgeInsets.symmetric(horizontal: 3.h),
                    decoration: AppDecoration.outlineGray40001.copyWith(borderRadius: BorderRadiusStyle.circleBorder48),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: [
                        SizedBox(height: 24.v),
                        CustomImage(image: AppImages.imgCamera, height: 48.adaptSize, width: 48.adaptSize),
                        CustomIconButton(
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                          padding: EdgeInsets.all(2.h),
                          decoration: IconButtonStyleHelper.fillPrimary,
                          alignment: Alignment.centerRight,
                          child: CustomImage(image: AppImages.imgAddButton),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 37.v),
                  CustomTextFormField(
                    controller: controller.fullNameController,
                    hintText: AppStrings.lblFullName.tr,
                    suffix: Container(
                        margin: EdgeInsets.fromLTRB(30.h, 13.v, 15.h, 13.v),
                        child: CustomImage(image: AppImages.imgIconUser, height: 24.adaptSize, width: 24.adaptSize)),
                    suffixConstraints: BoxConstraints(maxHeight: 50.v),
                    validator: Validators.nameValidator,
                    borderDecoration: TextFormFieldStyleHelper.outlineGrayTL10,
                  ),
                  SizedBox(height: 24.v),
                  CustomTextFormField(
                    controller: controller.emailController,
                    hintText: AppStrings.msgMohamedaliGmailCom.tr,
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
                        hintText: AppStrings.lbl1113324289.tr,
                        textInputType: TextInputType.phone,
                        validator: Validators.mobileNumberValidator,
                        contentPadding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 16.v),
                      ),
                    ],
                  ),
                  SizedBox(height: 24.v),
                  Obx(
                    () => CustomTextFormField(
                      controller: controller.passwordController,
                      hintText: AppStrings.lbl3.tr,
                      hintStyle: CustomTextStyles.bodyMediumCairo,
                      textInputType: TextInputType.visiblePassword,
                      suffix: InkWell(
                        onTap: () {
                          controller.isShowPassword.value = !controller.isShowPassword.value;
                        },
                        child: Container(
                          margin: EdgeInsets.fromLTRB(30.h, 13.v, 15.h, 13.v),
                          child:
                              CustomImage(image: AppImages.imgViewhidelight, height: 24.adaptSize, width: 24.adaptSize),
                        ),
                      ),
                      suffixConstraints: BoxConstraints(maxHeight: 50.v),
                      validator: Validators.passwordValidator,
                      obscureText: controller.isShowPassword.value,
                      contentPadding: EdgeInsets.only(left: 15.h, top: 8.v, bottom: 8.v),
                    ),
                  ),
                  SizedBox(height: 24.v),
                  Obx(
                    () => CustomTextFormField(
                        controller: controller.passwordController1,
                        hintText: "msg_re_type_password".tr,
                        textInputAction: TextInputAction.done,
                        textInputType: TextInputType.visiblePassword,
                        suffix: InkWell(
                          onTap: () {
                            controller.isShowPassword1.value = !controller.isShowPassword1.value;
                          },
                          child: Container(
                            margin: EdgeInsets.fromLTRB(30.h, 13.v, 15.h, 13.v),
                            child:
                                CustomImage(image: AppImages.imgViewlight, height: 24.adaptSize, width: 24.adaptSize),
                          ),
                        ),
                        suffixConstraints: BoxConstraints(maxHeight: 50.v),
                        validator: Validators.passwordValidator,
                        obscureText: controller.isShowPassword1.value,
                        borderDecoration: TextFormFieldStyleHelper.outlineGrayTL10),
                  ),
                  SizedBox(height: 32.v),
                  CustomButton(
                    text: AppStrings.lblCreateAccount.tr.toUpperCase(),
                    buttonTextStyle: CustomTextStyles.titleSmallWhiteA700,
                    onPressed: () {},
                  ),
                  SizedBox(height: 17.v),
                  Container(
                    width: 307.h,
                    margin: EdgeInsets.symmetric(horizontal: 9.h),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(
                            text: AppStrings.msgByPressingOnButton2.tr,
                            style: CustomTextStyles.labelMediumBlack900Medium,
                          ),
                          TextSpan(text: AppStrings.msgTermsConditions.tr, style: CustomTextStyles.labelMediumMedium)
                        ],
                      ),
                      textAlign: TextAlign.center,
                    ),
                  ),
                  SizedBox(height: 79.v),
                  GestureDetector(
                    onTap: () => Get.back(),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(text: AppStrings.msgAlreadyHaveAn2.tr, style: Get.theme.textTheme.bodyMedium),
                          TextSpan(
                            text: AppStrings.lblLogin.tr,
                            style:
                                CustomTextStyles.titleSmallPrimaryBold.copyWith(decoration: TextDecoration.underline),
                          )
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  )
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
