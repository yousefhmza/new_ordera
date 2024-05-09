import 'package:ecommerce/config/navigation/navigation.dart';
import 'package:ecommerce/core/services/responsive_service.dart';
import 'package:ecommerce/modules/settings/views/widgets/option_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../config/theme/theme.dart';
import '../../../../core/resources/resources.dart';
import '../../../../core/view/views.dart';

class SettingsScreen extends StatelessWidget {
  const SettingsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        MainAppbar(title: AppStrings.lblSettings.tr, showDefaultBackButton: false),
        Expanded(
          child: SingleChildScrollView(
            padding: const EdgeInsets.symmetric(vertical: 16),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Padding(
                    padding: EdgeInsets.only(left: 24.h, right: 87.h),
                    child: Row(
                      children: [
                        CustomImage(
                          image: AppImages.imgEllipse1075x75,
                          height: 75.adaptSize,
                          width: 75.adaptSize,
                          borderRadius: AppSize.s250,
                        ),
                        Padding(
                          padding: EdgeInsets.only(left: 24.h, top: 12.v, bottom: 12.v),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text("lbl_mohamed_ali".tr, style: CustomTextStyles.titleMediumSemiBold_1),
                              SizedBox(height: 13.v),
                              Text("msg_mohamedali_gmail_com".tr, style: CustomTextStyles.bodyMediumGray60001)
                            ],
                          ),
                        )
                      ],
                    ),
                  ),
                ),
                SizedBox(height: 24.v),
                const Divider(color: AppColors.gray300),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppPadding.p24.h, vertical: AppPadding.p16.h)
                      .copyWith(bottom: AppPadding.p0),
                  child: CustomText(AppStrings.lblGeneral.tr, style: CustomTextStyles.bodyMediumGray60001),
                ),
                OptionItem(
                  text: AppStrings.msgAccountSettings.tr,
                  onTap: () => Get.toNamed(Routes.accountScreen),
                ),
                OptionItem(
                  text: AppStrings.lblAddresses.tr,
                  onTap: () => Get.toNamed(Routes.addressesScreen),
                ),
                OptionItem(
                  text: AppStrings.lblNotifications.tr,
                  onTap: () {},
                ),
                OptionItem(
                  text: AppStrings.lblLanguage.tr,
                  onTap: () => Get.toNamed(Routes.languageScreen),
                ),
                OptionItem(
                  text: AppStrings.lblPaymentMethods.tr,
                  onTap: () => Get.toNamed(Routes.paymentMethodsScreen),
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppPadding.p24.h, vertical: AppPadding.p16.h)
                      .copyWith(bottom: AppPadding.p0),
                  child: CustomText(AppStrings.lblLegal.tr, style: CustomTextStyles.bodyMediumGray60001),
                ),
                OptionItem(
                  text: AppStrings.msgTermsConditions.tr,
                  onTap: () => Get.toNamed(Routes.termsAndConditionsScreen),
                ),
                OptionItem(
                  text: AppStrings.lblAboutUs.tr,
                  onTap: () {},
                ),
                Padding(
                  padding: EdgeInsets.symmetric(horizontal: AppPadding.p24.h, vertical: AppPadding.p16.h)
                      .copyWith(bottom: AppPadding.p0),
                  child: CustomText(AppStrings.lblPrivate.tr, style: CustomTextStyles.bodyMediumGray60001),
                ),
                OptionItem(
                  text: AppStrings.lblSignOut.tr,
                  onTap: () => Get.offAllNamed(Routes.loginScreen),
                  showDivider: false,
                  isBold: true,
                  color: AppColors.red500,
                ),
              ],
            ),
          ),
        ),
      ],
    );
  }
}
