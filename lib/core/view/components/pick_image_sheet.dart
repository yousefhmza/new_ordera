// import 'dart:io';
//
// import 'package:flutter/material.dart';
// import 'package:flutter_svg/flutter_svg.dart';
// import 'package:get/get.dart';
// import 'package:image_picker/image_picker.dart';
//
// import '../../resources/resources.dart';
// import '../../utils/pickers.dart';
// import '../views.dart';
//
// class PickImageSheet extends StatelessWidget {
//   final void Function(File? image) onPickImage;
//   final void Function(List<File> images)? onPickMultipleImages;
//
//   const PickImageSheet({required this.onPickImage, this.onPickMultipleImages, Key? key}) : super(key: key);
//
//   @override
//   Widget build(BuildContext context) {
//     return Column(
//       children: [
//         if (onPickMultipleImages != null)
//           CustomButton(
//             isOutlined: true,
//             onPressed: () async {
//               final List<File> images = await Pickers.pickMultiImages();
//               Get.back();
//               onPickMultipleImages!(images);
//             },
//             child: Row(
//               children: [
//                 const CustomIcon.svg(AppIcons.image, color: AppColors.grey),
//                 const HorizontalSpace(AppSize.s8),
//                 CustomText(AppStrings.moreThanOneImage)
//               ],
//             ),
//           ),
//         if (onPickMultipleImages != null) const VerticalSpace(AppSize.s12),
//         CustomButton(
//           padding: const EdgeInsets.symmetric(vertical: AppPadding.p10, horizontal: AppPadding.p8),
//           isOutlined: true,
//           onPressed: () async {
//             final File? image = await Pickers.pickImage(ImageSource.gallery);
//             Get.back();
//             onPickImage(image);
//           },
//           child: Row(
//             children: [
//               const CustomIcon.svg(AppIcons.image, color: AppColors.grey),
//               const HorizontalSpace(AppSize.s8),
//               CustomText(AppStrings.gallery)
//             ],
//           ),
//         ),
//         const VerticalSpace(AppSize.s12),
//         CustomButton(
//           padding: const EdgeInsets.symmetric(vertical: AppPadding.p10, horizontal: AppPadding.p8),
//           isOutlined: true,
//           onPressed: () async {
//             final File? image = await Pickers.pickImage(ImageSource.camera);
//             Get.back();
//             onPickImage(image);
//           },
//           child: Row(
//             children: [
//               const CustomIcon.svg(AppIcons.camera, color: AppColors.grey),
//               const HorizontalSpace(AppSize.s8),
//               CustomText(AppStrings.camera)
//             ],
//           ),
//         ),
//         const VerticalSpace(AppSize.s12),
//         CustomButton(
//           padding: const EdgeInsets.symmetric(vertical: AppPadding.p10, horizontal: AppPadding.p8),
//           onPressed: () => Get.back(),
//           color: AppColors.deepRed,
//           child: Row(
//             children: [
//               const CustomIcon(Icons.cancel, color: AppColors.white),
//               const HorizontalSpace(AppSize.s8),
//               CustomText(AppStrings.cancel, color: AppColors.white)
//             ],
//           ),
//         ),
//       ],
//     );
//   }
// }
