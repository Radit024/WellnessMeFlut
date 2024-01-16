import 'controller/sign_up_controller.dart';
import 'package:flutter/material.dart';
import 'package:wellnessmeflut/core/app_export.dart';
import 'package:wellnessmeflut/widgets/custom_elevated_button.dart';
import 'package:wellnessmeflut/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class SignUpScreen extends GetWidget<SignUpController> {
  const SignUpScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        backgroundColor: appTheme.gray90001,
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              Spacer(
                flex: 51,
              ),
              Text(
                "msg_sign_up_for_free".tr,
                style: theme.textTheme.headlineLarge,
              ),
              SizedBox(height: 35.v),
              _buildInputFieldMaster(),
              SizedBox(height: 23.v),
              _buildFrame1(),
              SizedBox(height: 23.v),
              _buildFrame2(),
              SizedBox(height: 24.v),
              CustomElevatedButton(
                height: 56.v,
                text: "lbl_sign_up2".tr,
                margin: EdgeInsets.only(
                  left: 16.h,
                  right: 15.h,
                ),
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
                flex: 48,
              ),
              CustomImageView(
                imagePath: ImageConstant.imgBackground,
                height: 83.v,
                width: 373.h,
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildInputFieldMaster() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_email_address".tr,
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 8.v),
          CustomTextFormField(
            controller: controller.emailController,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(16.h, 16.v, 30.h, 16.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgSettingsOnprimarycontainer24x24,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 56.v,
            ),
            borderDecoration: TextFormFieldStyleHelper.outlineGreen,
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildFrame1() {
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
          Obx(
            () => CustomTextFormField(
              controller: controller.passwordController,
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

  /// Section Widget
  Widget _buildFrame2() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          RichText(
            text: TextSpan(
              children: [
                TextSpan(
                  text: "lbl_password".tr,
                  style: CustomTextStyles.titleSmallffffffff_1,
                ),
                TextSpan(
                  text: " ",
                ),
                TextSpan(
                  text: "lbl_confirmation".tr,
                  style: CustomTextStyles.titleSmallffffffff_1,
                ),
              ],
            ),
            textAlign: TextAlign.left,
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
                  controller.isShowPassword1.value =
                      !controller.isShowPassword1.value;
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
              obscureText: controller.isShowPassword1.value,
              borderDecoration: TextFormFieldStyleHelper.outlineGrayC,
            ),
          ),
        ],
      ),
    );
  }
}
