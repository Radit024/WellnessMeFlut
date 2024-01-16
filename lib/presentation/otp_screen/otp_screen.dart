import 'controller/otp_controller.dart';
import 'package:flutter/material.dart';
import 'package:wellnessmeflut/core/app_export.dart';
import 'package:wellnessmeflut/widgets/custom_elevated_button.dart';
import 'package:wellnessmeflut/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class OtpScreen extends GetWidget<OtpController> {
  const OtpScreen({Key? key})
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
                flex: 41,
              ),
              Text(
                "msg_find_your_account".tr,
                style: theme.textTheme.headlineLarge,
              ),
              SizedBox(height: 41.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 310.h,
                  margin: EdgeInsets.only(
                    left: 17.h,
                    right: 47.h,
                  ),
                  child: Text(
                    "msg_enter_the_code_that".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.titleMediumUrbanistExtraBold,
                  ),
                ),
              ),
              SizedBox(height: 37.v),
              Padding(
                padding: EdgeInsets.only(
                  left: 17.h,
                  right: 10.h,
                ),
                child: CustomTextFormField(
                  controller: controller.contentController,
                  textInputAction: TextInputAction.done,
                  borderDecoration: TextFormFieldStyleHelper.outlineLightGreen,
                ),
              ),
              SizedBox(height: 39.v),
              CustomElevatedButton(
                height: 56.v,
                text: "lbl_confirm".tr,
                margin: EdgeInsets.only(
                  left: 17.h,
                  right: 10.h,
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
                flex: 58,
              ),
              Container(
                height: 83.v,
                width: double.maxFinite,
                decoration: BoxDecoration(
                  color: appTheme.gray90001,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
