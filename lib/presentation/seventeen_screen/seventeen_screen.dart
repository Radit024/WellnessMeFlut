import 'controller/seventeen_controller.dart';
import 'package:flutter/material.dart';
import 'package:wellnessmef/core/app_export.dart';
import 'package:wellnessmef/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:wellnessmef/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:wellnessmef/widgets/app_bar/custom_app_bar.dart';

class SeventeenScreen extends GetWidget<SeventeenController> {
  const SeventeenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 27.h, vertical: 39.v),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgAlbumArt,
                      height: 250.adaptSize,
                      width: 250.adaptSize,
                      radius: BorderRadius.circular(125.h)),
                  SizedBox(height: 24.v),
                  SizedBox(
                      height: 76.v,
                      width: 242.h,
                      child:
                          Stack(alignment: Alignment.bottomCenter, children: [
                        Align(
                            alignment: Alignment.topCenter,
                            child: Text("lbl_painting_forest".tr,
                                style: theme.textTheme.displaySmall)),
                        Align(
                            alignment: Alignment.bottomCenter,
                            child: Opacity(
                                opacity: 0.5,
                                child: Text("msg_by_painting_with".tr,
                                    style: CustomTextStyles
                                        .headlineSmallAlegreyaSansWhiteA700)))
                      ])),
                  SizedBox(height: 56.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgTime,
                      height: 50.v,
                      width: 309.h),
                  SizedBox(height: 44.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgGroup,
                      height: 75.v,
                      width: 303.h),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 62.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 30.h, top: 12.v, bottom: 12.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarSubtitleOne(text: "lbl_relax_sound".tr));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
