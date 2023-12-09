import 'package:ecommerce/config/navigation/navigation.dart';
import 'package:ecommerce/core/resources/resources.dart';
import 'package:ecommerce/core/services/responsive_service.dart';
import 'package:ecommerce/core/view/views.dart';
import 'package:get/get.dart';

import '../../../../config/theme/custom_text_style.dart';
import '../../../../core/utils/validation_functions.dart';
import '../../../../core/utils/validators.dart';
import '../../controller/sign_in_controller.dart';
import 'package:flutter/material.dart';

class SignInScreen extends GetWidget<SignInController> {
  const SignInScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return StatusBar(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SafeArea(
          child: Form(
            key: controller.formKey,
            child: Padding(
              padding: const EdgeInsets.all(AppPadding.p24),
              child: Column(
                children: [
                  VerticalSpace(8),
                  Text(AppStrings.lbl.tr, style: Theme.of(context).textTheme.displayMedium),
                  Text(AppStrings.lbl2.tr, style: CustomTextStyles.titleSmallCairo),
                  VerticalSpace(46),
                  Text(AppStrings.lblHello.tr, style: Theme.of(context).textTheme.headlineSmall),
                  VerticalSpace(18),
                  CustomTextFormField(
                    controller: controller.emailController,
                    hintText: "msg_mohamedali_gmail_com".tr,
                    textInputType: TextInputType.emailAddress,
                    suffix: Container(
                      margin: EdgeInsets.fromLTRB(30.h, 13, 15.h, 13),
                      child: CustomImage(image: AppImages.imgIconMail, height: 24.adaptSize, width: 24.adaptSize),
                    ),
                    suffixConstraints: BoxConstraints(maxHeight: 50),
                    validator: Validators.emailValidator,
                  ),
                  VerticalSpace(20),
                  CustomTextFormField(
                    controller: controller.passwordController,
                    hintText: AppStrings.lblPassword.tr,
                    textInputAction: TextInputAction.done,
                    textInputType: TextInputType.visiblePassword,
                    suffix: InkWell(
                      onTap: () => controller.isShowPassword.value = !controller.isShowPassword.value,
                      child: Container(
                        margin: EdgeInsets.fromLTRB(30.h, 13, 15.h, 13),
                        child: CustomImage(image: AppImages.imgViewlight, height: 24.adaptSize, width: 24.adaptSize),
                      ),
                    ),
                    suffixConstraints: BoxConstraints(maxHeight: 50),
                    validator: Validators.passwordValidator,
                    obscureText: controller.isShowPassword.value,
                    borderDecoration: TextFormFieldStyleHelper.outlineGrayTL10,
                  ),
                  VerticalSpace(22),
                  Align(
                    alignment: Alignment.centerRight,
                    child: Text(AppStrings.msgForgotPassword.tr, style: Theme.of(context).textTheme.titleSmall),
                  ),
                  VerticalSpace(22),
                  CustomButton(
                    text: AppStrings.lblLogin.tr,
                    onPressed: () => Get.offAllNamed(Routes.chooseComponentsScreen),
                  ),
                  VerticalSpace(33),
                  GestureDetector(
                    onTap: () {},
                    child: Text(AppStrings.msgContinueWithout.tr, style: CustomTextStyles.titleSmallSemiBold),
                  ),
                  VerticalSpace(82),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      Padding(
                        padding: EdgeInsets.only(top: 9, bottom: 6),
                        child: SizedBox(width: 106.h, child: Divider(color: AppColors.black)),
                      ),
                      CustomText(AppStrings.lblOrLoginWith.tr, style: Theme.of(context).textTheme.titleSmall),
                      Padding(
                        padding: EdgeInsets.only(top: 9, bottom: 6),
                        child: SizedBox(width: 106.h, child: Divider(color: AppColors.black)),
                      )
                    ],
                  ),
                  VerticalSpace(24),
                  CustomButton(
                    isOutlined: true,
                    color: AppColors.gray40001,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      crossAxisAlignment: CrossAxisAlignment.center,
                      children: [
                        Container(
                          margin: EdgeInsets.only(right: 12.h),
                          child: CustomImage(image: AppImages.imgSearch, height: 20.adaptSize, width: 20.adaptSize),
                        ),
                        CustomText(
                          AppStrings.msgLoginWithGoogle.tr,
                          style: Theme.of(context).textTheme.bodyMedium!,
                        ),
                      ],
                    ),
                    onPressed: () {},
                  ),
                  VerticalSpace(42),
                  GestureDetector(
                    onTap: () => Get.offAllNamed(Routes.signUpScreen),
                    child: RichText(
                      text: TextSpan(
                        children: [
                          TextSpan(text: AppStrings.lblNewHere.tr, style: Theme.of(context).textTheme.bodyMedium),
                          TextSpan(
                            text: AppStrings.msgCreateNewAccount.tr,
                            style:
                                CustomTextStyles.titleSmallPrimaryBold.copyWith(decoration: TextDecoration.underline),
                          )
                        ],
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
