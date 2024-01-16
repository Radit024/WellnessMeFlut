import '../controller/sixteen_controller.dart';
import '../models/gallery_item_model.dart';
import 'package:flutter/material.dart';
import 'package:wellnessmeflut/core/app_export.dart';

// ignore: must_be_immutable
class GalleryItemWidget extends StatelessWidget {
  GalleryItemWidget(
    this.galleryItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  GalleryItemModel galleryItemModelObj;

  var controller = Get.find<SixteenController>();

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Obx(
          () => CustomImageView(
            imagePath: galleryItemModelObj.paintingImage!.value,
            height: 65.adaptSize,
            width: 65.adaptSize,
            radius: BorderRadius.circular(
              20.h,
            ),
          ),
        ),
        Padding(
          padding: EdgeInsets.only(
            left: 20.h,
            top: 14.v,
            bottom: 26.v,
          ),
          child: Obx(
            () => Text(
              galleryItemModelObj.paintingName!.value,
              style: theme.textTheme.titleLarge,
            ),
          ),
        ),
        Spacer(),
        Opacity(
          opacity: 0.75,
          child: Padding(
            padding: EdgeInsets.symmetric(vertical: 23.v),
            child: Obx(
              () => Text(
                galleryItemModelObj.duration!.value,
                style: CustomTextStyles.titleSmallAlegreyaSansWhiteA700,
              ),
            ),
          ),
        ),
      ],
    );
  }
}
