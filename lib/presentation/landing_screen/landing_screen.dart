import 'controller/landing_controller.dart';
import 'package:flutter/material.dart';
import 'package:wellnessmeflut/core/app_export.dart';
import 'package:wellnessmeflut/widgets/custom_elevated_button.dart';

class LandingScreen extends GetWidget<LandingController> {
  const LandingScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.only(left: 25.h, top: 102.v, right: 25.h),
                child: Column(children: [
                  CustomImageView(
                      imagePath: ImageConstant.imgGroupPrimary,
                      height: 304.v,
                      width: 277.h),
                  SizedBox(height: 51.v),
                  CustomImageView(
                      imagePath: ImageConstant.imgTitleSection,
                      height: 63.v,
                      width: 209.h,
                      alignment: Alignment.centerLeft,
                      margin: EdgeInsets.only(left: 53.h)),
                  SizedBox(height: 20.v),
                  CustomElevatedButton(
                      height: 60.v,
                      text: "lbl_go_to_homepage".tr,
                      margin: EdgeInsets.only(left: 10.h),
                      buttonStyle: CustomButtonStyles.outlineIndigoAC,
                      buttonTextStyle: theme.textTheme.titleMedium!,
                      onPressed: () {
                        navigateToHome();
                      }),
                  SizedBox(height: 5.v)
                ]))));
  }

  /// Navigates to the homepageScreen when the action is triggered.
  navigateToHome() {
    Get.toNamed(
      AppRoutes.homepageScreen,
    );
  }
}
