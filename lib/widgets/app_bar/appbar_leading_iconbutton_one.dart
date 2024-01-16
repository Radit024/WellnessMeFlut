import 'package:flutter/material.dart';
import 'package:wellnessmef/core/app_export.dart';
import 'package:wellnessmef/widgets/custom_icon_button.dart';

// ignore: must_be_immutable
class AppbarLeadingIconbuttonOne extends StatelessWidget {
  AppbarLeadingIconbuttonOne({
    Key? key,
    this.imagePath,
    this.margin,
    this.onTap,
  }) : super(
          key: key,
        );

  String? imagePath;

  EdgeInsetsGeometry? margin;

  Function? onTap;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        onTap!.call();
      },
      child: Padding(
        padding: margin ?? EdgeInsets.zero,
        child: CustomIconButton(
          height: 32.adaptSize,
          width: 32.adaptSize,
          child: CustomImageView(
            imagePath: ImageConstant.imgBackNavs,
          ),
        ),
      ),
    );
  }
}
