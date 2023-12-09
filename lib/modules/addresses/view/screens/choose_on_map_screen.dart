import 'package:ecommerce/core/resources/resources.dart';
import 'package:ecommerce/core/services/responsive_service.dart';
import 'package:get/get.dart';

import '../../../../core/view/views.dart';
import '../../controller/choose_on_map_controller.dart';
import 'package:flutter/material.dart';

class ChooseOnMapScreen extends GetWidget<ChooseOnMapController> {
  const ChooseOnMapScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppbar(
        title: "",
      ),
      body: Stack(
        alignment: Alignment.bottomCenter,
        children: [
          CustomImage(
            image: AppImages.imgSimpleLocationPicker,
            height: double.infinity,
            width: double.infinity,
            fit: BoxFit.fill,
          ),
          Align(
            alignment: Alignment.bottomCenter,
            child: CustomButton(
              height: AppSize.s40.v,
              text: AppStrings.lblChoose.tr,
              onPressed: () {},
              margin: EdgeInsets.all(24),
            ),
          )
        ],
      ),
    );
  }
}
