import 'controller/fifteen_controller.dart';
import 'package:flutter/material.dart';
import 'package:wellnessmef/core/app_export.dart';
import 'package:wellnessmef/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:wellnessmef/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:wellnessmef/widgets/app_bar/custom_app_bar.dart';
import 'package:wellnessmef/widgets/custom_elevated_button.dart';

class FifteenScreen extends GetWidget<FifteenController> {
  const FifteenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 29.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Align(
                          alignment: Alignment.center,
                          child: Text("lbl_meditation".tr,
                              style: theme.textTheme.displaySmall)),
                      Opacity(
                          opacity: 0.5,
                          child: Container(
                              width: 314.h,
                              decoration: AppDecoration.outlineBlack,
                              child: Text("msg_guided_by_a_short".tr,
                                  maxLines: null,
                                  overflow: TextOverflow.ellipsis,
                                  style: CustomTextStyles
                                      .titleLargeAlegreyaWhiteA700))),
                      SizedBox(height: 36.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgCharacterMeditating,
                          height: 217.v,
                          width: 283.h,
                          margin: EdgeInsets.only(left: 11.h)),
                      SizedBox(height: 23.v),
                      Padding(
                          padding: EdgeInsets.only(left: 110.h),
                          child: Text("lbl_45_00".tr,
                              style:
                                  CustomTextStyles.displaySmallAlegreyaSans)),
                      SizedBox(height: 38.v),
                      CustomElevatedButton(
                          height: 61.v,
                          width: 186.h,
                          text: "lbl_start_now".tr,
                          margin: EdgeInsets.only(left: 57.h),
                          buttonStyle: CustomButtonStyles.fillPrimaryTL10,
                          buttonTextStyle:
                              CustomTextStyles.headlineSmallAlegreyaSans),
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
        title: AppbarSubtitleOne(
            text: "msg_meditation_relaxation".tr,
            margin: EdgeInsets.only(left: 43.h)));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
