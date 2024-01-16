import 'controller/eight_controller.dart';
import 'package:flutter/material.dart';
import 'package:wellnessmef/core/app_export.dart';
import 'package:wellnessmef/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:wellnessmef/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:wellnessmef/widgets/app_bar/custom_app_bar.dart';
import 'package:wellnessmef/widgets/custom_checkbox_button.dart';
import 'package:wellnessmef/widgets/custom_elevated_button.dart';
import 'package:wellnessmef/widgets/custom_icon_button.dart';
import 'package:wellnessmef/widgets/custom_switch.dart';

// ignore_for_file: must_be_immutable
class EightScreen extends GetWidget<EightController> {
  const EightScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 30.h,
            vertical: 23.v,
          ),
          child: Column(
            children: [
              _buildFortyFour(),
              SizedBox(height: 15.v),
              _buildPersonalData(),
              SizedBox(height: 30.v),
              _buildAccountSection(),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
      leadingWidth: 62.h,
      leading: AppbarLeadingIconbuttonOne(
        imagePath: ImageConstant.imgBackNavs,
        margin: EdgeInsets.only(
          left: 30.h,
          top: 12.v,
          bottom: 12.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleOne(
        text: "lbl_profile".tr,
      ),
    );
  }

  /// Section Widget
  Widget _buildFortyFour() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(
          width: 102.h,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              CustomIconButton(
                height: 55.adaptSize,
                width: 55.adaptSize,
                decoration: IconButtonStyleHelper.fillPrimaryTL27,
                child: CustomImageView(
                  imagePath: ImageConstant.imgThumbsUp,
                ),
              ),
              Padding(
                padding: EdgeInsets.only(
                  top: 2.v,
                  bottom: 31.v,
                ),
                child: Text(
                  "lbl_user".tr,
                  style: CustomTextStyles.titleSmallPoppins,
                ),
              ),
            ],
          ),
        ),
        CustomElevatedButton(
          height: 30.v,
          width: 83.h,
          text: "lbl_edit".tr,
          margin: EdgeInsets.only(
            top: 10.v,
            bottom: 15.v,
          ),
          buttonTextStyle: theme.textTheme.labelLarge!,
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildPersonalData() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Padding(
          padding: EdgeInsets.only(right: 7.h),
          child: _buildWeightCard(
            weightText: "lbl_180cm".tr,
            weightLabel: "lbl_height".tr,
          ),
        ),
        Padding(
          padding: EdgeInsets.symmetric(horizontal: 7.h),
          child: _buildWeightCard(
            weightText: "lbl_65kg".tr,
            weightLabel: "lbl_weight".tr,
          ),
        ),
        Padding(
          padding: EdgeInsets.only(left: 7.h),
          child: _buildWeightCard(
            weightText: "lbl_22yo".tr,
            weightLabel: "lbl_age".tr,
          ),
        ),
      ],
    );
  }

  /// Section Widget
  Widget _buildAccountSection() {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 14.h,
        vertical: 20.v,
      ),
      decoration: AppDecoration.outlineGray900113.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Text(
              "lbl_account".tr,
              style: CustomTextStyles.titleMediumSemiBold,
            ),
          ),
          SizedBox(height: 14.v),
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgSettingsPrimary,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: Text(
                    "lbl_personal_data".tr,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgArrowRight,
                  height: 18.adaptSize,
                  width: 18.adaptSize,
                ),
              ],
            ),
          ),
          SizedBox(height: 33.v),
          Padding(
            padding: EdgeInsets.only(left: 4.h),
            child: Text(
              "lbl_notification".tr,
              style: CustomTextStyles.titleMediumSemiBold,
            ),
          ),
          SizedBox(height: 15.v),
          Padding(
            padding: EdgeInsets.only(
              left: 4.h,
              right: 3.h,
            ),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgUser,
                  height: 20.adaptSize,
                  width: 20.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(left: 10.h),
                  child: Text(
                    "msg_pop_up_notification".tr,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                Spacer(),
                Obx(
                  () => CustomSwitch(
                    value: controller.isSelectedSwitch.value,
                    onChange: (value) {
                      controller.isSelectedSwitch.value = value;
                    },
                  ),
                ),
              ],
            ),
          ),
          SizedBox(height: 33.v),
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Text(
              "lbl_other".tr,
              style: CustomTextStyles.titleMediumSemiBold,
            ),
          ),
          SizedBox(height: 14.v),
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Obx(
                  () => CustomCheckboxButton(
                    text: "lbl_contact_us".tr,
                    value: controller.contactUs.value,
                    padding: EdgeInsets.symmetric(vertical: 1.v),
                    onChange: (value) {
                      controller.contactUs.value = value;
                    },
                  ),
                ),
                CustomImageView(
                  imagePath: ImageConstant.imgArrowRight,
                  height: 18.adaptSize,
                  width: 18.adaptSize,
                ),
              ],
            ),
          ),
          SizedBox(height: 13.v),
          Padding(
            padding: EdgeInsets.only(left: 6.h),
            child: Row(
              children: [
                CustomImageView(
                  imagePath: ImageConstant.imgArrowLeft24x24,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
                Padding(
                  padding: EdgeInsets.only(
                    left: 7.h,
                    top: 4.v,
                  ),
                  child: Text(
                    "lbl_log_out".tr,
                    style: theme.textTheme.bodySmall,
                  ),
                ),
                Spacer(),
                CustomImageView(
                  imagePath: ImageConstant.imgArrowRight,
                  height: 18.adaptSize,
                  width: 18.adaptSize,
                  margin: EdgeInsets.symmetric(vertical: 3.v),
                ),
              ],
            ),
          ),
          SizedBox(height: 64.v),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildWeightCard({
    required String weightText,
    required String weightLabel,
  }) {
    return Expanded(
      child: SizedBox(
        width: double.maxFinite,
        child: Container(
          padding: EdgeInsets.symmetric(
            horizontal: 26.h,
            vertical: 8.v,
          ),
          decoration: AppDecoration.outlineGray900112.copyWith(
            borderRadius: BorderRadiusStyle.roundedBorder16,
          ),
          child: Column(
            mainAxisSize: MainAxisSize.min,
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              SizedBox(height: 3.v),
              Padding(
                padding: EdgeInsets.only(left: 3.h),
                child: Text(
                  weightText,
                  style: CustomTextStyles.titleSmallPoppins.copyWith(
                    color: appTheme.whiteA700,
                  ),
                ),
              ),
              SizedBox(height: 4.v),
              Text(
                weightLabel,
                style: theme.textTheme.bodySmall!.copyWith(
                  color: appTheme.whiteA700,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
