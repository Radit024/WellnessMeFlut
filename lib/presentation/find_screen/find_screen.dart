import 'controller/find_controller.dart';
import 'package:flutter/material.dart';
import 'package:wellnessmef/core/app_export.dart';
import 'package:wellnessmef/widgets/custom_elevated_button.dart';
import 'package:wellnessmef/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class FindScreen extends GetWidget<FindController> {
  const FindScreen({Key? key})
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
              SizedBox(height: 34.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Container(
                  width: 336.h,
                  margin: EdgeInsets.only(
                    left: 11.h,
                    right: 27.h,
                  ),
                  child: Text(
                    "msg_enter_your_email2".tr,
                    maxLines: 2,
                    overflow: TextOverflow.ellipsis,
                    style: CustomTextStyles.titleMediumUrbanistExtraBold,
                  ),
                ),
              ),
              SizedBox(height: 27.v),
              _buildEmailFrame(),
              SizedBox(height: 24.v),
              CustomElevatedButton(
                height: 56.v,
                text: "lbl_confirm".tr,
                margin: EdgeInsets.only(
                  left: 11.h,
                  right: 16.h,
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

  /// Section Widget
  Widget _buildEmailFrame() {
    return Padding(
      padding: EdgeInsets.only(
        left: 11.h,
        right: 21.h,
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "msg_email_address_phone".tr,
            style: theme.textTheme.titleSmall,
          ),
          SizedBox(height: 8.v),
          CustomTextFormField(
            controller: controller.phoneNumberController,
            textInputAction: TextInputAction.done,
            prefix: Container(
              margin: EdgeInsets.fromLTRB(16.h, 16.v, 30.h, 16.v),
              child: CustomImageView(
                imagePath: ImageConstant.imgSettingsOnprimarycontainer,
                height: 24.adaptSize,
                width: 24.adaptSize,
              ),
            ),
            prefixConstraints: BoxConstraints(
              maxHeight: 56.v,
            ),
            borderDecoration: TextFormFieldStyleHelper.outlineLightGreen,
          ),
        ],
      ),
    );
  }
}
