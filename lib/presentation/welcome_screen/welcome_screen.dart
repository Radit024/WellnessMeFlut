import 'controller/welcome_controller.dart';
import 'package:flutter/material.dart';
import 'package:wellnessmeflut/core/app_export.dart';

class WelcomeScreen extends GetWidget<WelcomeController> {
  const WelcomeScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray90001,
            body: SizedBox(
                width: double.maxFinite,
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      SizedBox(height: 32.v),
                      Text("lbl_wellnessme".tr,
                          style:
                              CustomTextStyles.displayMediumUrbanistWhiteA700),
                      SizedBox(height: 66.v),
                      CustomImageView(
                          imagePath: ImageConstant.imgImg,
                          height: 332.v,
                          width: 329.h,
                          alignment: Alignment.centerLeft),
                      SizedBox(height: 79.v),
                      Text("lbl_the_sengkuni".tr,
                          style:
                              CustomTextStyles.titleMediumUrbanistExtraBold_1)
                    ]))));
  }
}
