import 'package:ecommerce/core/resources/resources.dart';
import 'package:ecommerce/core/services/responsive_service.dart';
import 'package:ecommerce/core/view/views.dart';
import 'package:ecommerce/modules/regions/views/components/regions_component.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../config/theme/theme.dart';
import '../../../../core/utils/validators.dart';
import '../../controller/registration_controller.dart';

class RegistrationScreen extends GetWidget<RegistrationController> {
  const RegistrationScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return StatusBar(
      child: Scaffold(
        body: SafeArea(
          child: Form(
            key: controller.formKey,
            child: SingleChildScrollView(
              padding: EdgeInsets.symmetric(horizontal: 24.h, vertical: 27.v),
              child: Column(
                children: [
                  CustomTextField(
                    hintText: AppStrings.lblFullName.tr,
                    suffix: CustomImage(image: AppImages.imgIconUser, height: 24.adaptSize, width: 24.adaptSize),
                    validator: Validators.nameValidator,
                    onChanged: (value) => controller.registerBody.copyWith(fullName: value),
                  ),
                  VerticalSpace(24.v),
                  CustomTextField(
                    hintText: AppStrings.lblUserName.tr,
                    suffix: CustomImage(image: AppImages.imgIconUser, height: 24.adaptSize, width: 24.adaptSize),
                    validator: Validators.nameValidator,
                    onChanged: (value) => controller.registerBody.copyWith(userName: value),
                  ),
                  VerticalSpace(24.v),
                  RegionsComponent(
                    onChangeCountry: (country) => controller.registerBody.copyWith(countryId: country.id.toString()),
                    onChangeState: (state) => controller.registerBody.copyWith(stateId: state.id.toString()),
                    onChangeCity: (city) => controller.registerBody.copyWith(cityId: city.id.toString()),
                  ),
                  VerticalSpace(24.v),
                  CustomTextField(
                    hintText: AppStrings.msgMohamedaliGmailCom.tr,
                    keyBoardType: TextInputType.emailAddress,
                    textCapitalization: TextCapitalization.none,
                    suffix: CustomImage(image: AppImages.imgIconMail, height: 24.adaptSize, width: 24.adaptSize),
                    validator: Validators.emailValidator,
                    onChanged: (value) => controller.registerBody.copyWith(email: value),
                  ),
                  VerticalSpace(24.v),
                  // SizedBox(height: 24.v),
                  // Row(
                  //   mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  //   children: [
                  //     Container(
                  //       width: 108.h,
                  //       padding: EdgeInsets.symmetric(vertical: 12.v),
                  //       decoration: AppDecoration.outlineGray.copyWith(borderRadius: BorderRadiusStyle.roundedBorder10),
                  //       child: Row(
                  //         mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                  //         children: [
                  //           Padding(
                  //             padding: EdgeInsets.symmetric(vertical: 3.v),
                  //             child: Text(AppStrings.lbl20.tr, style: CustomTextStyles.bodyMediumGray40001),
                  //           ),
                  //           CustomImage(image: AppImages.imgFrame159Gray40001, height: 24.v, width: 1.h),
                  //           CustomImage(image: AppImages.imgExpandDown, height: 24.adaptSize, width: 24.adaptSize)
                  //         ],
                  //       ),
                  //     ),
                  //     CustomTextFormField(
                  //       width: 202.h,
                  //       controller: controller.mobileNoController,
                  //       hintText: AppStrings.lbl1113324289.tr,
                  //       textInputType: TextInputType.phone,
                  //       validator: Validators.mobileNumberValidator,
                  //       contentPadding: EdgeInsets.symmetric(horizontal: 12.h, vertical: 16.v),
                  //     ),
                  //   ],
                  // ),
                  // SizedBox(height: 24.v),
                  Obx(
                    () => CustomTextField(
                      hintText: AppStrings.lbl3.tr,
                      keyBoardType: TextInputType.visiblePassword,
                      suffix: InkWell(
                        onTap: () => controller.showPassword.value = !controller.showPassword.value,
                        child: CustomImage(
                          image: controller.showPassword.value ? AppImages.imgViewhidelight : AppImages.imgViewlight,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                        ),
                      ),
                      validator: Validators.passwordValidator,
                      obscureText: !controller.showPassword.value,
                      onChanged: (value) => controller.registerBody.copyWith(password: value),
                    ),
                  ),
                  SizedBox(height: 24.v),
                  Obx(
                    () => CustomTextField(
                      hintText: AppStrings.msgReTypePassword.tr,
                      textInputAction: TextInputAction.done,
                      keyBoardType: TextInputType.visiblePassword,
                      suffix: InkWell(
                        onTap: () =>
                            controller.showPasswordConfirmation.value = !controller.showPasswordConfirmation.value,
                        child: CustomImage(
                          image: controller.showPasswordConfirmation.value
                              ? AppImages.imgViewhidelight
                              : AppImages.imgViewlight,
                          height: 24.adaptSize,
                          width: 24.adaptSize,
                        ),
                      ),
                      validator: (input) =>
                          Validators.passwordConfirmationValidator(input, controller.registerBody.password),
                      obscureText: !controller.showPasswordConfirmation.value,
                    ),
                  ),
                  SizedBox(height: 32.v),
                  Obx(
                    () => controller.isLoading.value
                        ? const LoadingSpinner()
                        : CustomButton(
                            text: AppStrings.lblCreateAccount.tr.toUpperCase(),
                            buttonTextStyle: CustomTextStyles.titleSmallWhiteA700,
                            onPressed: () {
                              FocusManager.instance.primaryFocus?.unfocus();
                              controller.register();
                            },
                          ),
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
                  SizedBox(height: 40.v),
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
