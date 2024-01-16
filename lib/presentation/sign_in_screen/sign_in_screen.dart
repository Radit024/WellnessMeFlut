import 'controller/sign_in_controller.dart';
import 'package:flutter/material.dart';
import 'package:wellnessmef/core/app_export.dart';
import 'package:wellnessmef/core/utils/validation_functions.dart';
import 'package:wellnessmef/widgets/custom_elevated_button.dart';
import 'package:wellnessmef/widgets/custom_icon_button.dart';
import 'package:wellnessmef/widgets/custom_text_form_field.dart';
import 'package:wellnessmef/domain/googleauth/google_auth_helper.dart';

// ignore_for_file: must_be_immutable
class SignInScreen extends GetWidget<SignInController> {
  SignInScreen({Key? key}) : super(key: key);

  GlobalKey<FormState> _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            resizeToAvoidBottomInset: false,
            backgroundColor: appTheme.gray90001,
            body: SizedBox(
                width: SizeUtils.width,
                child: SingleChildScrollView(
                    padding: EdgeInsets.only(
                        bottom: MediaQuery.of(context).viewInsets.bottom),
                    child: Form(
                        key: _formKey,
                        child: SizedBox(
                            width: double.maxFinite,
                            child: Column(children: [
                              Spacer(),
                              Text("msg_sign_in_to_wellnessme".tr,
                                  style: theme.textTheme.headlineLarge),
                              SizedBox(height: 44.v),
                              _buildEmailSection(),
                              SizedBox(height: 23.v),
                              _buildPasswordSection(),
                              SizedBox(height: 24.v),
                              CustomElevatedButton(
                                  height: 56.v,
                                  text: "lbl_sign_in".tr,
                                  margin:
                                      EdgeInsets.only(left: 14.h, right: 13.h),
                                  rightIcon: Container(
                                      margin: EdgeInsets.only(left: 16.h),
                                      child: CustomImageView(
                                          imagePath: ImageConstant
                                              .imgArrowleftWhiteA700,
                                          height: 24.adaptSize,
                                          width: 24.adaptSize)),
                                  buttonStyle:
                                      CustomButtonStyles.fillPrimaryTL28,
                                  buttonTextStyle:
                                      CustomTextStyles.titleMediumUrbanist,
                                  onPressed: () {
                                    navigateToLand();
                                  }),
                              SizedBox(height: 48.v),
                              CustomIconButton(
                                  height: 56.adaptSize,
                                  width: 56.adaptSize,
                                  padding: EdgeInsets.all(16.h),
                                  decoration:
                                      IconButtonStyleHelper.outlineWhiteA,
                                  onTap: () {
                                    onTapBtnGoogle();
                                  },
                                  child: CustomImageView(
                                      imagePath: ImageConstant.imgGoogle)),
                              SizedBox(height: 49.v),
                              GestureDetector(
                                  onTap: () {
                                    navigateToSign();
                                  },
                                  child: RichText(
                                      text: TextSpan(children: [
                                        TextSpan(
                                            text:
                                                "msg_don_t_have_an_account2".tr,
                                            style: CustomTextStyles
                                                .titleSmallffffffff),
                                        TextSpan(text: " "),
                                        TextSpan(
                                            text: "lbl_sign_up".tr,
                                            style: CustomTextStyles
                                                .titleSmallffec7d1c
                                                .copyWith(
                                                    decoration: TextDecoration
                                                        .underline))
                                      ]),
                                      textAlign: TextAlign.left)),
                              SizedBox(height: 8.v),
                              GestureDetector(
                                  onTap: () {
                                    navigateToForgot();
                                  },
                                  child: Text("lbl_forgot_password".tr,
                                      style: CustomTextStyles
                                          .titleSmallYellow900
                                          .copyWith(
                                              decoration:
                                                  TextDecoration.underline))),
                              SizedBox(height: 49.v),
                              Container(
                                  height: 83.v,
                                  width: double.maxFinite,
                                  decoration:
                                      BoxDecoration(color: appTheme.gray90001))
                            ])))))));
  }

  /// Section Widget
  Widget _buildEmailSection() {
    return Padding(
        padding: EdgeInsets.only(left: 14.h, right: 18.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_email_address".tr, style: theme.textTheme.titleSmall),
          SizedBox(height: 8.v),
          CustomTextFormField(
              controller: controller.emailController,
              hintText: "msg_enter_your_email".tr,
              textInputType: TextInputType.emailAddress,
              prefix: Container(
                  margin: EdgeInsets.fromLTRB(16.h, 16.v, 8.h, 16.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgSettingsOnprimarycontainer,
                      height: 24.adaptSize,
                      width: 24.adaptSize)),
              prefixConstraints: BoxConstraints(maxHeight: 56.v),
              validator: (value) {
                if (value == null || (!isValidEmail(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_email".tr;
                }
                return null;
              },
              contentPadding:
                  EdgeInsets.only(top: 18.v, right: 30.h, bottom: 18.v),
              borderDecoration: TextFormFieldStyleHelper.outlineGray)
        ]));
  }

  /// Section Widget
  Widget _buildPasswordSection() {
    return Padding(
        padding: EdgeInsets.only(left: 14.h, right: 18.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
          Text("lbl_password".tr, style: theme.textTheme.titleSmall),
          SizedBox(height: 8.v),
          Obx(() => CustomTextFormField(
              controller: controller.passwordController,
              hintText: "msg_enter_your_password".tr,
              textInputAction: TextInputAction.done,
              textInputType: TextInputType.visiblePassword,
              prefix: Container(
                  margin: EdgeInsets.fromLTRB(16.h, 16.v, 8.h, 16.v),
                  child: CustomImageView(
                      imagePath: ImageConstant.imgLocation,
                      height: 24.adaptSize,
                      width: 24.adaptSize)),
              prefixConstraints: BoxConstraints(maxHeight: 56.v),
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
                          width: 24.adaptSize))),
              suffixConstraints: BoxConstraints(maxHeight: 56.v),
              validator: (value) {
                if (value == null ||
                    (!isValidPassword(value, isRequired: true))) {
                  return "err_msg_please_enter_valid_password".tr;
                }
                return null;
              },
              obscureText: controller.isShowPassword.value,
              contentPadding: EdgeInsets.symmetric(vertical: 18.v),
              borderDecoration: TextFormFieldStyleHelper.outlineGrayC))
        ]));
  }

  /// Navigates to the landingScreen when the action is triggered.
  navigateToLand() {
    Get.toNamed(
      AppRoutes.landingScreen,
    );
  }

  onTapBtnGoogle() async {
    await GoogleAuthHelper().googleSignInProcess().then((googleUser) {
      if (googleUser != null) {
        //TODO Actions to be performed after signin
      } else {
        Get.snackbar('Error', 'user data is empty');
      }
    }).catchError((onError) {
      Get.snackbar('Error', onError.toString());
    });
  }

  /// Navigates to the signUpScreen when the action is triggered.
  navigateToSign() {
    Get.toNamed(
      AppRoutes.signUpScreen,
    );
  }

  /// Navigates to the findScreen when the action is triggered.
  navigateToForgot() {
    Get.toNamed(
      AppRoutes.findScreen,
    );
  }
}
