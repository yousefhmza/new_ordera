import 'package:ecommerce/core/services/responsive_service.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../core/resources/resources.dart';
import '../../../../core/view/views.dart';

class PaymentMethodWidget extends StatelessWidget {
  final String image;
  final String text;
  final bool verticalPadding;

  const PaymentMethodWidget({required this.image, required this.text, this.verticalPadding = true, super.key});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {},
      child: Padding(
        padding: EdgeInsets.only(bottom: AppPadding.p16, top: verticalPadding ? AppPadding.p16 : AppPadding.p0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            CustomImage(image: image, height: 12.v, width: 40.h),
            const HorizontalSpace(AppSize.s12),
            CustomText(text, style: Get.theme.textTheme.bodySmall),
            const Spacer(),
            CustomRadioButton(
              isSelected: text == "lbl_cash".tr,
              onChanged: (value) {},
            ),
          ],
        ),
      ),
    );
  }
}
