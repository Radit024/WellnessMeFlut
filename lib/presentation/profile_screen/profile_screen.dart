import 'controller/profile_controller.dart';
import 'package:flutter/material.dart';
import 'package:wellnessmeflut/core/app_export.dart';
import 'package:wellnessmeflut/widgets/custom_checkbox_button.dart';
import 'package:wellnessmeflut/widgets/custom_elevated_button.dart';
import 'package:wellnessmeflut/widgets/custom_icon_button.dart';
import 'package:wellnessmeflut/widgets/custom_switch.dart';

// ignore_for_file: must_be_immutable
class ProfileScreen extends GetWidget<ProfileController> {
  const ProfileScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray90001,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 28.h,
            top: 86.v,
            right: 28.h,
          ),
          child: Column(
            children: [
              _buildProfileSection(),
              SizedBox(height: 18.v),
              _buildDataCardSection(),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildProfileSection() {
    return Padding(
      padding: EdgeInsets.only(right: 4.h),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
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
              left: 15.h,
              top: 2.v,
              bottom: 31.v,
            ),
            child: Text(
              "lbl_user".tr,
              style: CustomTextStyles.titleSmallPoppins,
            ),
          ),
          Spacer(),
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
      ),
    );
  }

  /// Section Widget
  Widget _buildDataCardSection() {
    return Container(
      margin: EdgeInsets.only(right: 4.h),
      padding: EdgeInsets.symmetric(
        horizontal: 15.h,
        vertical: 31.v,
      ),
      decoration: AppDecoration.outlineGray900113.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder16,
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(left: 5.h),
            child: Text(
              "lbl_notification".tr,
              style: CustomTextStyles.titleMediumSemiBold,
            ),
          ),
          SizedBox(height: 15.v),
          Padding(
            padding: EdgeInsets.only(left: 5.h),
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
          SizedBox(height: 21.v),
          Padding(
            padding: EdgeInsets.only(left: 5.h),
            child: Text(
              "lbl_other".tr,
              style: CustomTextStyles.titleMediumSemiBold,
            ),
          ),
          SizedBox(height: 14.v),
          Padding(
            padding: EdgeInsets.only(left: 5.h),
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
          SizedBox(height: 16.v),
          Align(
            alignment: Alignment.centerRight,
            child: Padding(
              padding: EdgeInsets.only(left: 35.h),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 1.v),
                    child: Text(
                      "lbl_log_out".tr,
                      style: theme.textTheme.bodySmall,
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
          ),
          SizedBox(height: 16.v),
        ],
      ),
    );
  }
}
