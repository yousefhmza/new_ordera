import 'package:flutter/material.dart';

import '../views.dart';
import '../../resources/resources.dart';

class MainAppbar extends StatelessWidget implements PreferredSizeWidget {
  final String title;
  final bool showDefaultBackButton;
  final List<Widget>? actions;

  const MainAppbar({required this.title, this.showDefaultBackButton = true, this.actions, super.key});

  @override
  Widget build(BuildContext context) {
    return CustomAppbar(
      showDefaultBackButton: showDefaultBackButton,
      actions: actions,
      titleSpacing: AppSize.s0,
      title: CustomText(
        title,
        style: const TextStyle(fontSize: FontSize.s16, fontWeight: FontWeightManager.bold),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
