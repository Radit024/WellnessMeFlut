import 'controller/app_navigation_controller.dart';
import 'package:flutter/material.dart';
import 'package:wellnessmef/core/app_export.dart';

// ignore_for_file: must_be_immutable
class AppNavigationScreen extends GetWidget<AppNavigationController> {
  const AppNavigationScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Color(0XFFFFFFFF),
        body: SizedBox(
          width: double.maxFinite,
          child: Column(
            children: [
              _buildAppNavigation(),
              Expanded(
                child: SingleChildScrollView(
                  child: Container(
                    decoration: BoxDecoration(
                      color: Color(0XFFFFFFFF),
                    ),
                    child: Column(
                      children: [
                        _buildScreenTitle(
                          screenTitle: "Eleven".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.elevenScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Fourteen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.fourteenScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Fifteen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.fifteenScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sixteen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.sixteenScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Seventeen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.seventeenScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Eighteen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.eighteenScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Nineteen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.nineteenScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Welcome".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.welcomeScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sign In".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signInScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Sign Up".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.signUpScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Find".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.findScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "OTP".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.otpScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Confirm".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.confirmScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Landing".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.landingScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Homepage".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.homepageScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Eight".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.eightScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Nine".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.nineScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Ten".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.tenScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Twelve".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.twelveScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Thirteen".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.thirteenScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Twenty".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.twentyScreen),
                        ),
                        _buildScreenTitle(
                          screenTitle: "Profile".tr,
                          onTapScreenTitle: () =>
                              onTapScreenTitle(AppRoutes.profileScreen),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildAppNavigation() {
    return Container(
      decoration: BoxDecoration(
        color: Color(0XFFFFFFFF),
      ),
      child: Column(
        children: [
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.symmetric(horizontal: 20.h),
              child: Text(
                "App Navigation".tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF000000),
                  fontSize: 20.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 10.v),
          Align(
            alignment: Alignment.centerLeft,
            child: Padding(
              padding: EdgeInsets.only(left: 20.h),
              child: Text(
                "Check your app's UI from the below demo screens of your app."
                    .tr,
                textAlign: TextAlign.center,
                style: TextStyle(
                  color: Color(0XFF888888),
                  fontSize: 16.fSize,
                  fontFamily: 'Roboto',
                  fontWeight: FontWeight.w400,
                ),
              ),
            ),
          ),
          SizedBox(height: 5.v),
          Divider(
            height: 1.v,
            thickness: 1.v,
            color: Color(0XFF000000),
          ),
        ],
      ),
    );
  }

  /// Common widget
  Widget _buildScreenTitle({
    required String screenTitle,
    Function? onTapScreenTitle,
  }) {
    return GestureDetector(
      onTap: () {
        onTapScreenTitle!.call();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Color(0XFFFFFFFF),
        ),
        child: Column(
          children: [
            SizedBox(height: 10.v),
            Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.h),
                child: Text(
                  screenTitle,
                  textAlign: TextAlign.center,
                  style: TextStyle(
                    color: Color(0XFF000000),
                    fontSize: 20.fSize,
                    fontFamily: 'Roboto',
                    fontWeight: FontWeight.w400,
                  ),
                ),
              ),
            ),
            SizedBox(height: 10.v),
            SizedBox(height: 5.v),
            Divider(
              height: 1.v,
              thickness: 1.v,
              color: Color(0XFF888888),
            ),
          ],
        ),
      ),
    );
  }

  /// Common click event
  void onTapScreenTitle(String routeName) {
    Get.toNamed(routeName);
  }
}
