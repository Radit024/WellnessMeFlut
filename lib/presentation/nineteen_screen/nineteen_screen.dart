import 'controller/nineteen_controller.dart';
import 'package:flutter/material.dart';
import 'package:wellnessmeflut/core/app_export.dart';
import 'package:wellnessmeflut/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:wellnessmeflut/widgets/app_bar/appbar_subtitle.dart';
import 'package:wellnessmeflut/widgets/app_bar/appbar_trailing_image.dart';
import 'package:wellnessmeflut/widgets/app_bar/custom_app_bar.dart';
import 'package:wellnessmeflut/widgets/custom_elevated_button.dart';
import 'package:wellnessmeflut/widgets/custom_text_form_field.dart';

class NineteenScreen extends GetWidget<NineteenController> {
  const NineteenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: appTheme.gray90001,
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 11.h, vertical: 36.v),
                child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Padding(
                          padding: EdgeInsets.only(left: 14.h),
                          child: _buildProfile(
                              doctorName: "msg_dr_marcus_horizon".tr,
                              time: "lbl_10_min_ago".tr)),
                      SizedBox(height: 10.v),
                      Container(
                          margin: EdgeInsets.only(left: 14.h, right: 134.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 15.h, vertical: 9.v),
                          decoration: AppDecoration.fillGray200.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderBL8),
                          child: Text("msg_hello_how_can_i".tr,
                              style:
                                  CustomTextStyles.bodyMediumRalewayGray700)),
                      SizedBox(height: 15.v),
                      Padding(
                          padding: EdgeInsets.only(right: 12.h),
                          child: _buildChat4(
                              healthStatusText: "msg_i_have_suffering".tr)),
                      SizedBox(height: 15.v),
                      Padding(
                          padding: EdgeInsets.only(left: 14.h),
                          child: _buildProfile(
                              doctorName: "msg_dr_marcus_horizon".tr,
                              time: "lbl_5_min_ago".tr)),
                      SizedBox(height: 10.v),
                      Container(
                          width: 221.h,
                          margin: EdgeInsets.only(left: 14.h, right: 118.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 13.h, vertical: 7.v),
                          decoration: AppDecoration.fillGray200.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderBL8),
                          child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(height: 2.v),
                                Container(
                                    width: 186.h,
                                    margin: EdgeInsets.only(right: 9.h),
                                    child: Text("msg_ok_do_you_have".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: CustomTextStyles
                                            .bodyMediumRalewayGray700
                                            .copyWith(height: 1.43)))
                              ])),
                      SizedBox(height: 15.v),
                      Padding(
                          padding: EdgeInsets.only(right: 12.h),
                          child: _buildChat4(
                              healthStatusText: "msg_i_don_t_have_any2".tr)),
                      SizedBox(height: 15.v),
                      Padding(
                          padding: EdgeInsets.only(left: 14.h),
                          child: _buildProfile(
                              doctorName: "msg_dr_marcus_horizon".tr,
                              time: "lbl_online".tr)),
                      SizedBox(height: 10.v),
                      Container(
                          height: 22.v,
                          width: 58.h,
                          margin: EdgeInsets.only(left: 14.h),
                          padding: EdgeInsets.symmetric(
                              horizontal: 13.h, vertical: 8.v),
                          decoration: AppDecoration.fillGray200.copyWith(
                              borderRadius: BorderRadiusStyle.customBorderBL5),
                          child: CustomImageView(
                              imagePath: ImageConstant.imgGroup141,
                              height: 5.v,
                              width: 32.h,
                              alignment: Alignment.bottomCenter)),
                      Spacer(),
                      SizedBox(height: 4.v),
                      _buildNinetyOne()
                    ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 57.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 25.h, top: 12.v, bottom: 12.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarSubtitle(text: "msg_dr_marcus_horizon".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgArrowDown,
              margin: EdgeInsets.fromLTRB(5.h, 12.v, 5.h, 20.v))
        ]);
  }

  /// Section Widget
  Widget _buildNinetyOne() {
    return Padding(
        padding: EdgeInsets.only(left: 14.h),
        child:
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
          Padding(
              padding: EdgeInsets.only(bottom: 1.v),
              child: CustomTextFormField(
                  width: 207.h,
                  controller: controller.messageController,
                  hintText: "msg_type_message".tr,
                  textInputAction: TextInputAction.done,
                  suffix: Container(
                      margin: EdgeInsets.fromLTRB(30.h, 15.v, 17.h, 15.v),
                      child: CustomImageView(
                          imagePath: ImageConstant.imgAttach,
                          height: 20.adaptSize,
                          width: 20.adaptSize)),
                  suffixConstraints: BoxConstraints(maxHeight: 50.v))),
          CustomElevatedButton(
              height: 50.v,
              width: 111.h,
              text: "lbl_send".tr,
              buttonStyle: CustomButtonStyles.fillBlue,
              buttonTextStyle: CustomTextStyles.titleSmallRaleway)
        ]));
  }

  /// Common widget
  Widget _buildProfile({
    required String doctorName,
    required String time,
  }) {
    return Row(children: [
      CustomImageView(
          imagePath: ImageConstant.imgPlay40x40,
          height: 40.adaptSize,
          width: 40.adaptSize),
      Padding(
          padding: EdgeInsets.only(left: 13.h, top: 3.v),
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
            Text(doctorName,
                style: CustomTextStyles.titleSmallRaleway
                    .copyWith(color: appTheme.whiteA700)),
            SizedBox(height: 6.v),
            Text(time,
                style: CustomTextStyles.labelMediumRalewayGray50001
                    .copyWith(color: appTheme.gray50001))
          ]))
    ]);
  }

  /// Common widget
  Widget _buildChat4({required String healthStatusText}) {
    return Container(
        padding: EdgeInsets.symmetric(horizontal: 5.h, vertical: 6.v),
        decoration: AppDecoration.fillBlue
            .copyWith(borderRadius: BorderRadiusStyle.customBorderTL8),
        child: Row(
            mainAxisAlignment: MainAxisAlignment.end,
            crossAxisAlignment: CrossAxisAlignment.end,
            mainAxisSize: MainAxisSize.min,
            children: [
              Container(
                  width: 165.h,
                  margin: EdgeInsets.only(left: 9.h, top: 4.v, bottom: 1.v),
                  child: Text(healthStatusText,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.bodyMediumRalewayWhiteA700
                          .copyWith(color: appTheme.whiteA700, height: 1.43))),
              CustomImageView(
                  imagePath: ImageConstant.imgBasicCheckAllBig,
                  height: 16.adaptSize,
                  width: 16.adaptSize,
                  margin: EdgeInsets.only(left: 36.h, top: 30.v))
            ]));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
