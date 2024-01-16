import 'controller/eleven_controller.dart';
import 'package:flutter/material.dart';
import 'package:wellnessmef/core/app_export.dart';
import 'package:wellnessmef/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:wellnessmef/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:wellnessmef/widgets/app_bar/appbar_trailing_iconbutton.dart';
import 'package:wellnessmef/widgets/app_bar/custom_app_bar.dart';
import 'package:wellnessmef/widgets/custom_elevated_button.dart';

class ElevenScreen extends GetWidget<ElevenController> {
  const ElevenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(top: 38.v),
                    child: Container(
                        margin: EdgeInsets.only(bottom: 5.v),
                        padding: EdgeInsets.symmetric(horizontal: 25.h),
                        child: Column(children: [
                          _buildGraph(),
                          SizedBox(height: 26.v),
                          _buildBanner(),
                          SizedBox(height: 12.v),
                          _buildAction(),
                          SizedBox(height: 14.v),
                          Align(
                              alignment: Alignment.centerLeft,
                              child: Padding(
                                  padding: EdgeInsets.only(left: 10.h),
                                  child: Text("lbl_today_schedule".tr,
                                      style: CustomTextStyles
                                          .titleMediumSemiBold))),
                          SizedBox(height: 6.v),
                          _buildScheduleCard()
                        ]))))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 67.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 35.h, top: 12.v, bottom: 11.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarSubtitleOne(text: "lbl_sleep_tracker".tr),
        actions: [
          AppbarTrailingIconbutton(
              imagePath: ImageConstant.imgDetailNavs,
              margin: EdgeInsets.fromLTRB(25.h, 11.v, 25.h, 13.v))
        ]);
  }

  /// Section Widget
  Widget _buildGraph() {
    return SizedBox(
        height: 171.v,
        width: 306.h,
        child: Stack(alignment: Alignment.bottomLeft, children: [
          Align(
              alignment: Alignment.center,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Expanded(
                        child: Padding(
                            padding: EdgeInsets.only(top: 7.v),
                            child: Column(children: [
                              Divider(),
                              SizedBox(height: 26.v),
                              Divider(),
                              SizedBox(height: 25.v),
                              Divider(),
                              SizedBox(height: 25.v),
                              Divider(),
                              SizedBox(height: 26.v),
                              Divider(),
                              SizedBox(height: 25.v),
                              Divider(),
                              SizedBox(height: 7.v),
                              Padding(
                                  padding:
                                      EdgeInsets.symmetric(horizontal: 4.h),
                                  child: Row(
                                      mainAxisAlignment:
                                          MainAxisAlignment.spaceBetween,
                                      children: [
                                        Text("lbl_sun".tr,
                                            style: CustomTextStyles
                                                .bodySmallGray600),
                                        Text("lbl_mon".tr,
                                            style: CustomTextStyles
                                                .bodySmallGray600),
                                        Text("lbl_tue".tr,
                                            style: CustomTextStyles
                                                .bodySmallGray600),
                                        Text("lbl_wed".tr,
                                            style: CustomTextStyles
                                                .bodySmallGray600),
                                        Text("lbl_thu".tr,
                                            style: CustomTextStyles
                                                .labelLargePrimary),
                                        Text("lbl_fri".tr,
                                            style: CustomTextStyles
                                                .bodySmallGray600),
                                        Text("lbl_sat".tr,
                                            style: CustomTextStyles
                                                .bodySmallGray600)
                                      ]))
                            ]))),
                    Padding(
                        padding: EdgeInsets.only(left: 5.h, bottom: 17.v),
                        child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Align(
                                  alignment: Alignment.center,
                                  child: Text("lbl_10h".tr,
                                      style:
                                          CustomTextStyles.bodySmallGray60010)),
                              SizedBox(height: 12.v),
                              Text("lbl_8h".tr,
                                  style: CustomTextStyles.labelMediumPrimary),
                              SizedBox(height: 10.v),
                              Text("lbl_6h".tr,
                                  style: CustomTextStyles.bodySmallGray60010),
                              SizedBox(height: 11.v),
                              Text("lbl_4h".tr,
                                  style: CustomTextStyles.bodySmallGray60010),
                              SizedBox(height: 11.v),
                              Text("lbl_2h".tr,
                                  style: CustomTextStyles.bodySmallGray60010),
                              SizedBox(height: 12.v),
                              Text("lbl_0h".tr,
                                  style: CustomTextStyles.bodySmallGray60010)
                            ]))
                  ])),
          CustomImageView(
              imagePath: ImageConstant.imgGraph,
              height: 109.v,
              width: 285.h,
              alignment: Alignment.bottomLeft,
              margin: EdgeInsets.only(bottom: 26.v)),
          Align(
              alignment: Alignment.bottomRight,
              child: Padding(
                  padding:
                      EdgeInsets.only(left: 153.h, right: 67.h, bottom: 17.v),
                  child: Column(mainAxisSize: MainAxisSize.min, children: [
                    Container(
                        padding: EdgeInsets.symmetric(
                            horizontal: 10.h, vertical: 9.v),
                        decoration: AppDecoration.outlineGray.copyWith(
                            borderRadius: BorderRadiusStyle.roundedBorder8),
                        child: Text("lbl_43_increase".tr,
                            style: CustomTextStyles.bodySmallGreen500)),
                    CustomImageView(
                        imagePath: ImageConstant.imgSettings,
                        height: 8.adaptSize,
                        width: 8.adaptSize),
                    SizedBox(height: 4.v),
                    CustomImageView(
                        imagePath: ImageConstant.imgFavorite,
                        height: 83.v,
                        width: 7.h)
                  ])))
        ]));
  }

  /// Section Widget
  Widget _buildBanner() {
    return Container(
        margin: EdgeInsets.only(left: 10.h),
        decoration: AppDecoration.outlineIndigoAC
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder22),
        child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              SizedBox(height: 21.v),
              Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: Text("msg_last_night_sleep".tr,
                      style: CustomTextStyles.titleSmallPoppins)),
              SizedBox(height: 3.v),
              Padding(
                  padding: EdgeInsets.only(left: 20.h),
                  child: RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: "lbl_8".tr,
                            style: CustomTextStyles.titleMediumffffffff),
                        TextSpan(
                            text: "lbl_h".tr,
                            style: CustomTextStyles.bodyMediumffffffff),
                        TextSpan(text: " "),
                        TextSpan(
                            text: "lbl_20".tr,
                            style: CustomTextStyles.titleMediumffffffff),
                        TextSpan(
                            text: "lbl_m".tr,
                            style: CustomTextStyles.bodyMediumffffffff)
                      ]),
                      textAlign: TextAlign.left)),
              SizedBox(height: 3.v),
              CustomImageView(
                  imagePath: ImageConstant.imgSleepGraph,
                  height: 78.v,
                  width: 315.h)
            ]));
  }

  /// Section Widget
  Widget _buildAction() {
    return Container(
        margin: EdgeInsets.symmetric(horizontal: 5.h),
        padding: EdgeInsets.symmetric(horizontal: 20.h, vertical: 14.v),
        decoration: AppDecoration.fillBlueGray
            .copyWith(borderRadius: BorderRadiusStyle.roundedBorder16),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(top: 4.v, bottom: 3.v),
              child: Text("msg_daily_sleep_schedule".tr,
                  style: CustomTextStyles.titleSmallPoppins)),
          CustomElevatedButton(
              height: 28.v,
              width: 68.h,
              text: "lbl_check".tr,
              margin: EdgeInsets.only(top: 1.v),
              buttonStyle: CustomButtonStyles.fillPrimary,
              buttonTextStyle: theme.textTheme.bodySmall!)
        ]));
  }

  /// Section Widget
  Widget _buildScheduleCard() {
    return Container(
        margin: EdgeInsets.only(left: 10.h),
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

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
