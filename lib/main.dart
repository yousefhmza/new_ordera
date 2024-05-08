import 'package:flutter/material.dart';
import 'package:get/get.dart';

import 'config/localization/controller/l10n_controller.dart';
import 'config/localization/l10n/l10n.dart';
import 'config/navigation/navigation.dart';
import 'config/theme/light_theme.dart';
import 'core/utils/constants.dart';
import 'di_container.dart' as di;

void main() async {
  WidgetsFlutterBinding.ensureInitialized();
  await di.init();

  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: Constants.appName,
      theme: lightTheme(),
      debugShowCheckedModeBanner: false,
      initialRoute: Routes.onBoardingScreen,
      getPages: Pages.pages,
      translations: L10n(),
      locale: Get.put(di.sl<L10nController>()).appLocale ?? Get.deviceLocale,
      supportedLocales: L10n.supportedLocales,
      localizationsDelegates: L10n.localizationDelegates,
      localeResolutionCallback: L10n.setFallbackLocale,
    );
  }
}