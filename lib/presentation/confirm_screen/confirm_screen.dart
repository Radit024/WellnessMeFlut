import 'controller/confirm_controller.dart';
import 'package:flutter/material.dart';
import 'package:wellnessmeflut/core/app_export.dart';
import 'package:wellnessmeflut/widgets/custom_elevated_button.dart';
import 'package:wellnessmeflut/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class ConfirmScreen extends GetWidget<ConfirmController> {
  const ConfirmScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Spacer(
                flex: 52,
              ),
              Text(
                "msg_find_your_account".tr,
                style: theme.textTheme.headlineLarge,
              ),
              SizedBox(height: 35.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 35.h),
                  child: Text(
                    "msg_set_your_new_password".tr,
                    style: CustomTextStyles.titleMediumUrbanist,
                  ),
                ),
              ),
              SizedBox(height: 17.v),
              _buildFrameColumn(),
              SizedBox(height: 36.v),
              _buildFrameColumn1(),
              SizedBox(height: 36.v),
              CustomElevatedButton(
                height: 56.v,
                text: "lbl_submit".tr,
                margin: EdgeInsets.symmetric(horizontal: 16.h),
                rightIcon: Container(
                  margin: EdgeInsets.only(left: 16.h),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgArrowleftWhiteA700,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                ),
                buttonStyle: CustomButtonStyles.fillPrimaryTL28,
                buttonTextStyle: CustomTextStyles.titleMediumUrbanist,
              ),
              Spacer(
                flex: 47,
              ),
              Container(
                height: 83.v,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: appTheme.gray90003,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameColumn() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_password".tr,
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 8.v),
          CustomTextFormField(
            controller: controller.passwordController,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(16.h, 16.v, 30.h, 16.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgEye,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 56.v,
            ),
            obscureText: true,
            borderDecoration: TextFormFieldStyleHelper.outlineGrayC,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrameColumn1() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_password_confirmation".tr,
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 8.v),
          Obx(
            () => CustomTextFormField(
              controller: controller.passwordController1,
              textInputAction: TextInputAction.done,
              prefix: Container(
                margin: EdgeInsets.fromLTRB(16.h, 16.v, 30.h, 16.v),
                child: CustomImageView(
                  imagePath: ImageConstant.imgLocation,
                  height: 24.adaptSize,
                  width: 24.adaptSize,
                ),
              ),
              prefixConstraints: BoxConstraints(
                maxHeight: 56.v,
              ),
              suffix: InkWell(
                onTap: () {
                  controller.isShowPassword.value =
                      !controller.isShowPassword.value;
                },
                child: Container(
                  margin: EdgeInsets.fromLTRB(30.h, 16.v, 16.h, 16.v),
                  child: CustomImageView(
                    imagePath: ImageConstant.imgEye,
                    height: 24.adaptSize,
                    width: 24.adaptSize,
                  ),
                ),
              ),
              suffixConstraints: BoxConstraints(
                maxHeight: 56.v,
              ),
              obscureText: controller.isShowPassword.value,
              borderDecoration: TextFormFieldStyleHelper.outlineGrayC,
            ),
          ),
        ],
      ),
    );
  }
}
