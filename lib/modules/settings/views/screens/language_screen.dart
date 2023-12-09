import 'package:ecommerce/config/localization/controller/l10n_controller.dart';
import 'package:ecommerce/core/resources/resources.dart';
import 'package:ecommerce/core/services/responsive_service.dart';
import 'package:ecommerce/core/view/views.dart';
import 'package:ecommerce/modules/settings/views/widgets/lang_item.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LanguageScreen extends StatelessWidget {
  const LanguageScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: MainAppbar(title: AppStrings.lblLanguage.tr),
      body: Container(
        width: double.maxFinite,
        padding: EdgeInsets.symmetric(vertical: 24.v),
        child: Column(
          children: [
            LangItem(language: "العربية"),
            LangItem(language: "English", isSelected: true),
          ],
        ),
      ),
    );
  }
}
