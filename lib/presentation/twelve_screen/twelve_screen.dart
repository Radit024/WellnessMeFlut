import 'controller/twelve_controller.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';
import 'package:flutter/material.dart';
import 'package:wellnessmef/core/app_export.dart';
import 'package:wellnessmef/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:wellnessmef/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:wellnessmef/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:wellnessmef/widgets/app_bar/custom_app_bar.dart';
import 'package:wellnessmef/widgets/custom_elevated_button.dart';
import 'package:wellnessmef/widgets/custom_floating_button.dart';
import 'package:wellnessmef/widgets/custom_switch.dart';

class TwelveScreen extends GetWidget<TwelveController> {
  const TwelveScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(vertical: 27.v),
                child: Column(mainAxisSize: MainAxisSize.min, children: [
                  SizedBox(height: 29.v),
                  _buildBanner(),
                  SizedBox(height: 19.v),
                  Align(
                      alignment: Alignment.centerLeft,
                      child: Padding(
                          padding: EdgeInsets.only(left: 30.h),
                          child: Text("lbl_your_schedule".tr,
                              style: CustomTextStyles.titleMediumSemiBold))),
                  SizedBox(height: 14.v),
                  _buildEightyThree(),
                  SizedBox(height: 30.v),
                  _buildScheduleCard(),
                  SizedBox(height: 15.v),
                  _buildEightyOne(),
                  SizedBox(height: 15.v)
                ])),
            floatingActionButton: _buildFloatingActionButton()));
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
        title: AppbarSubtitleOne(text: "lbl_sleep_schedule".tr),
        actions: [
          AppbarTrailingIconbutton(
              imagePath: ImageConstant.imgDetailNavs,
              margin: EdgeInsets.fromLTRB(30.h, 11.v, 30.h, 13.v))
        ]);
  }

  /// Section Widget
  Widget _buildBanner() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 30.h),
        padding: EdgeInsets.symmetric(vertical: 20.v),
        decoration: AppDecoration.fillPrimary
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder22),
        child: Row(mainAxisAlignment: MainAxisAlignment.spaceAround, children: [
          Padding(
              padding: EdgeInsets.symmetric(vertical: 3.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("msg_ideal_hours_for".tr,
                        style: theme.textTheme.bodySmall),
                    SizedBox(height: 3.v),
                    RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "lbl_8".tr,
                              style:
                                  CustomTextStyles.titleSmallPoppinsffffffff),
                          TextSpan(
                              text: "lbl_hours2".tr,
                              style: CustomTextStyles.bodySmallffffffff),
                          TextSpan(
                              text: "lbl_30".tr,
                              style:
                                  CustomTextStyles.titleSmallPoppinsffffffff),
                          TextSpan(
                              text: "lbl_minutes".tr,
                              style: CustomTextStyles.bodySmallffffffff)
                        ]),
                        textAlign: TextAlign.left),
                    SizedBox(height: 15.v),
                    CustomElevatedButton(width: 95.h, text: "lbl_learn_more".tr)
                  ])),
          CustomImageView(
              imagePath: ImageConstant.imgLayer1, height: 100.v, width: 118.h)
        ]));
  }

  /// Section Widget
  Widget _buildCalendar() {
    return Obx(() => SizedBox(
        height: 80.v,
        width: 405.h,
        child: EasyDateTimeLine(
            initialDate: controller.selectedDatesFromCalendar1.value,
            locale: 'en_US',
            headerProps: EasyHeaderProps(
                selectedDateFormat: SelectedDateFormat.fullDateDMY,
                monthPickerType: MonthPickerType.switcher,
                showHeader: false),
            dayProps: EasyDayProps(width: 60.h, height: 80.v),
            onDateChange: (selectedDate) {
              controller.selectedDatesFromCalendar1.value = selectedDate;
            },
            itemBuilder:
                (context, dayNumber, dayName, monthName, fullDate, isSelected) {
              return isSelected
                  ? Container(
                      width: 60.h,
                      padding: EdgeInsets.symmetric(
                          horizontal: 22.h, vertical: 16.v),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(10.h),
                          gradient: LinearGradient(
                              begin: Alignment(1, 1),
                              end: Alignment(-0.24, -0.31),
                              colors: [appTheme.indigoA100, appTheme.blue200])),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(dayName.toString(),
                                style: CustomTextStyles.bodySmallInter
                                    .copyWith(color: appTheme.whiteA700)),
                            Padding(
                                padding: EdgeInsets.only(top: 13.v),
                                child: Text(dayNumber.toString(),
                                    style: CustomTextStyles.titleSmallInter
                                        .copyWith(color: appTheme.whiteA700)))
                          ]))
                  : Container(
                      width: 60.h,
                      padding: EdgeInsets.symmetric(
                          horizontal: 19.h, vertical: 16.v),
                      decoration: BoxDecoration(
                          color: appTheme.gray50,
                          borderRadius: BorderRadius.circular(10.h)),
                      child: Column(
                          mainAxisSize: MainAxisSize.min,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          mainAxisAlignment: MainAxisAlignment.center,
                          children: [
                            Text(dayName.toString(),
                                style: CustomTextStyles.bodySmallInterGray600
                                    .copyWith(color: appTheme.gray600)),
                            Padding(
                                padding: EdgeInsets.only(top: 13.v),
                                child: Text(dayNumber.toString(),
                                    style: CustomTextStyles
                                        .titleSmallInterGray600
                                        .copyWith(color: appTheme.gray600)))
                          ]));
            })));
  }

  /// Section Widget
  Widget _buildEightyThree() {
    return SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: IntrinsicWidth(child: _buildCalendar()));
  }

  /// Section Widget
  Widget _buildScheduleCard() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 30.h),
        padding: EdgeInsets.symmetric(horizontal: 15.h, vertical: 21.v),
        decoration: AppDecoration.outlineGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder22),
        child: Row(mainAxisSize: MainAxisSize.max, children: [
          CustomImageView(
              imagePath: ImageConstant.imgIconBed,
              height: 30.adaptSize,
              width: 30.adaptSize,
              margin: EdgeInsets.only(top: 10.v, bottom: 9.v)),
          Padding(
              padding: EdgeInsets.only(left: 15.h, top: 1.v),
              child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "lbl_bedtime".tr,
                              style:
                                  CustomTextStyles.titleSmallPoppinsff1d1517),
                          TextSpan(
                              text: "lbl_09_00pm".tr,
                              style: CustomTextStyles.bodySmallff7b6f72)
                        ]),
                        textAlign: TextAlign.left),
                    SizedBox(height: 6.v),
                    RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: "lbl_in".tr,
                              style: theme.textTheme.bodyMedium),
                          TextSpan(
                              text: "lbl_6".tr,
                              style: CustomTextStyles.titleMediumff7b6f72),
                          TextSpan(
                              text: "lbl_hours".tr,
                              style: theme.textTheme.bodyMedium),
                          TextSpan(
                              text: "lbl_22minutes".tr,
                              style: CustomTextStyles.titleMediumff7b6f72)
                        ]),
                        textAlign: TextAlign.left)
                  ]))
        ]));
  }

  /// Section Widget
  Widget _buildEightyOne() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 30.h),
        padding: EdgeInsets.all(15.h),
        decoration: AppDecoration.outlineGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder22),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            mainAxisSize: MainAxisSize.min,
            children: [
              CustomImageView(
                  imagePath: ImageConstant.imgClock,
                  height: 30.adaptSize,
                  width: 30.adaptSize,
                  margin: EdgeInsets.only(top: 17.v, bottom: 16.v)),
              Padding(
                  padding: EdgeInsets.only(left: 15.h, top: 6.v, bottom: 6.v),
                  child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "lbl_alarm".tr,
                                  style: CustomTextStyles
                                      .titleSmallPoppinsff1d1517),
                              TextSpan(
                                  text: "lbl_05_10am".tr,
                                  style: CustomTextStyles.bodySmallff7b6f72)
                            ]),
                            textAlign: TextAlign.left),
                        SizedBox(height: 7.v),
                        RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: "lbl_in".tr,
                                  style: theme.textTheme.bodyMedium),
                              TextSpan(
                                  text: "lbl_14".tr,
                                  style: CustomTextStyles.titleMediumff7b6f72),
                              TextSpan(
                                  text: "lbl_hours".tr,
                                  style: theme.textTheme.bodyMedium),
                              TextSpan(
                                  text: "lbl_30minutes".tr,
                                  style: CustomTextStyles.titleMediumff7b6f72)
                            ]),
                            textAlign: TextAlign.left)
                      ])),
              Spacer(),
              Padding(
                  padding: EdgeInsets.only(bottom: 5.v),
                  child: Column(children: [
                    CustomImageView(
                        imagePath: ImageConstant.imgNotification,
                        height: 14.adaptSize,
                        width: 14.adaptSize,
                        alignment: Alignment.centerRight),
                    SizedBox(height: 20.v),
                    Obx(() => CustomSwitch(
                        value: controller.isSelectedSwitch.value,
                        onChange: (value) {
                          controller.isSelectedSwitch.value = value;
                        }))
                  ]))
            ]));
  }

  /// Section Widget
  Widget _buildFloatingActionButton() {
    return CustomFloatingButton(
        height: 60,
        width: 60,
        decoration: FloatingButtonStyleHelper.gradientDeepPurpleAToPink,
        child: CustomImageView(
            imagePath: ImageConstant.imgCocoBoldPlus,
            height: 30.0.v,
            width: 30.0.h));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
