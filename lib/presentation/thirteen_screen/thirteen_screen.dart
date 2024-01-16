import 'controller/thirteen_controller.dart';
import 'package:flutter/material.dart';
import 'package:wellnessmeflut/core/app_export.dart';
import 'package:wellnessmeflut/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:wellnessmeflut/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:wellnessmeflut/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:wellnessmeflut/widgets/app_bar/custom_app_bar.dart';
import 'package:wellnessmeflut/widgets/custom_elevated_button.dart';
import 'package:wellnessmeflut/widgets/custom_switch.dart';

class ThirteenScreen extends GetWidget<ThirteenController> {
  const ThirteenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 30.h, vertical: 18.v),
                child: Column(children: [
                  _buildHoursOfSleepCard(
                      clockImage: ImageConstant.imgIconBedGray600,
                      hoursOfSleepText: "lbl_bedtime2".tr,
                      durationText: "lbl_09_00_pm2".tr),
                  SizedBox(height: 10.v),
                  _buildHoursOfSleepCard(
                      clockImage: ImageConstant.imgClockGray600,
                      hoursOfSleepText: "lbl_hours_of_sleep".tr,
                      durationText: "msg_8hours_30minutes".tr),
                  SizedBox(height: 10.v),
                  _buildHoursOfSleepCard(
                      clockImage: ImageConstant.imgIconRepeat,
                      hoursOfSleepText: "lbl_repeat".tr,
                      durationText: "lbl_mon_to_fri".tr),
                  SizedBox(height: 10.v),
                  _buildVibrateCard(),
                  SizedBox(height: 5.v)
                ])),
            bottomNavigationBar: _buildAddButton()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 62.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 30.h, top: 12.v, bottom: 11.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarSubtitleOne(text: "lbl_add_alarm".tr),
        actions: [
          AppbarTrailingIconbutton(
              imagePath: ImageConstant.imgDetailNavs,
              margin: EdgeInsets.fromLTRB(30.h, 11.v, 30.h, 13.v))
        ]);
  }

  /// Section Widget
  Widget _buildVibrateCard() {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 13.v),
        decoration: AppDecoration.fillGray50
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: ImageConstant.imgTelevision,
              height: 20.adaptSize,
              width: 20.adaptSize),
          Padding(
              padding: EdgeInsets.only(left: 10.h, top: 2.v, bottom: 3.v),
              child: Text("msg_vibrate_when_alarm".tr,
                  style: CustomTextStyles.bodySmallGray600)),
          Spacer(),
          Obx(() => CustomSwitch(
              value: controller.isSelectedSwitch.value,
              onChange: (value) {
                controller.isSelectedSwitch.value = value;
              }))
        ]));
  }

  /// Section Widget
  Widget _buildAddButton() {
    return CustomElevatedButton(
        height: 60.v,
        text: "lbl_add".tr,
        margin: EdgeInsets.only(left: 31.h, right: 29.h, bottom: 23.v),
        buttonStyle: CustomButtonStyles.outlineIndigoAC,
        buttonTextStyle: theme.textTheme.titleMedium!);
  }

  /// Common widget
  Widget _buildHoursOfSleepCard({
    required String clockImage,
    required String hoursOfSleepText,
    required String durationText,
  }) {
    return Container(
        padding: EdgeInsets.all(15.h),
        decoration: AppDecoration.fillGray50
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
        child: Row(mainAxisAlignment: MainAxisAlignment.center, children: [
          CustomImageView(
              imagePath: clockImage, height: 20.adaptSize, width: 20.adaptSize),
          Padding(
              padding: EdgeInsets.only(left: 10.h),
              child: Text(hoursOfSleepText,
                  style: CustomTextStyles.bodySmallGray600
                      .copyWith(color: appTheme.gray600))),
          Spacer(),
          Padding(
              padding: EdgeInsets.symmetric(vertical: 2.v),
              child: Text(durationText,
                  style: CustomTextStyles.bodySmallGray500
                      .copyWith(color: appTheme.gray500))),
          CustomImageView(
              imagePath: ImageConstant.imgArrowRightGray500,
              height: 20.adaptSize,
              width: 20.adaptSize,
              margin: EdgeInsets.only(left: 5.h))
        ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
