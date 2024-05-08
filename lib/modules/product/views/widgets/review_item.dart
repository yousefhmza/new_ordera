import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:get/get.dart';

import '../../../../core/resources/resources.dart';
import '../../../../core/utils/constants.dart';
import '../../../../core/view/views.dart';

class ReviewItem extends StatelessWidget {
  const ReviewItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            CustomImage(
              image: Constants.tomCruiseImage,
              width: AppSize.s40,
              height: AppSize.s40,
              borderRadius: AppSize.s250,
            ),
            HorizontalSpace(AppSize.s8),
            Expanded(
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  CustomText(
                    "Mohamed ahmed",
                    style: Theme.of(context).textTheme.titleSmall?.copyWith(
                      fontSize: FontSize.s16,
                      fontWeight: FontWeightManager.regular,
                    ),
                  ),
                  RatingBar.builder(
                    itemCount: 5,
                    initialRating: 3,
                    itemSize: AppSize.s16,
                    unratedColor: AppColors.grey.withOpacity(0.4),
                    glow: false,
                    ignoreGestures: true,
                    itemPadding: const EdgeInsets.symmetric(horizontal: AppPadding.p1),
                    itemBuilder: (context, index) => const CustomIcon.svg(AppImages.imgStar, size: AppSize.s16),
                    onRatingUpdate: (rating) {},
                  ),
                ],
              ),
            ),
            CustomText(
              "1 Month",
              style: Theme.of(context).textTheme.titleSmall?.copyWith(
                color: AppColors.gray600,
                fontWeight: FontWeightManager.regular,
                fontSize: FontSize.s12,
              ),
            )
          ],
        ),
        const VerticalSpace(AppSize.s8),
        CustomText(
          AppStrings.msgLoremIpsumDolor.tr,
          style: Theme.of(context).textTheme.titleSmall?.copyWith(fontSize: FontSize.s12),
        ),
      ],
    );
  }
}
