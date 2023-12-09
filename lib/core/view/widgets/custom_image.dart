import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_svg/svg.dart';

import '../../resources/resources.dart';

enum ImageType { svg, svgNetwork, png, network, file, unknown }

extension ImageTypeExtension on String {
  ImageType get imageType {
    if (startsWith('http') || startsWith('https')) {
      return ImageType.network;
    } else if ((startsWith('http') || startsWith('https')) && endsWith('.svg')) {
      return ImageType.svgNetwork;
    } else if (endsWith('.svg')) {
      return ImageType.svg;
    } else if (startsWith('file://')) {
      return ImageType.file;
    } else {
      return ImageType.png;
    }
  }
}

class CustomImage extends StatelessWidget {
  final String image;
  final double? width;
  final double? height;
  final BoxFit fit;
  final double borderRadius;
  final Color? color;
  final EdgeInsetsGeometry? margin;
  final VoidCallback? onTap;

  const CustomImage({
    required this.image,
    this.height,
    this.width,
    this.fit = BoxFit.cover,
    this.borderRadius = AppSize.s0,
    this.color,
    this.margin,
    this.onTap,
    super.key,
  });

  Widget _buildImageView() {
    switch (image.imageType) {
      case ImageType.svg:
        return SvgPicture.asset(
          image,
          height: height,
          width: width,
          fit: fit,
          colorFilter: color != null ? ColorFilter.mode(color!, BlendMode.srcIn) : null,
        );
      case ImageType.svgNetwork:
        return SvgPicture.network(
          image,
          height: height,
          width: width,
          fit: fit,
          colorFilter: color != null ? ColorFilter.mode(color!, BlendMode.srcIn) : null,
        );
      case ImageType.file:
        return Image.file(
          File(image),
          height: height,
          width: width,
          fit: fit,
          color: color,
        );
      case ImageType.network:
        return FadeInImage.assetNetwork(
          image: image,
          width: width,
          height: height,
          placeholder: AppImages.imgPlaceholder,
          fit: fit,
          placeholderFit: BoxFit.cover,
          imageErrorBuilder: (_, __, ___) => Image.asset(
            AppImages.imgPlaceholder,
            fit: fit,
            width: width,
            height: height,
          ),
        );
      case ImageType.png:
      default:
        return Image.asset(
          image,
          height: height,
          width: width,
          fit: fit,
          color: color,
        );
    }
  }

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: margin ?? EdgeInsets.zero,
      child: InkWell(
        onTap: onTap,
        child: ClipRRect(
          borderRadius: BorderRadius.circular(borderRadius),
          child: _buildImageView(),
        ),
      ),
    );
  }
}
