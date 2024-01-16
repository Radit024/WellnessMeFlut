import 'controller/nine_controller.dart';
import 'package:flutter/material.dart';
import 'package:wellnessmef/core/app_export.dart';
import 'package:wellnessmef/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:wellnessmef/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:wellnessmef/widgets/app_bar/custom_app_bar.dart';
import 'package:wellnessmef/widgets/custom_icon_button.dart';
import 'package:wellnessmef/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class NineScreen extends GetWidget<NineController> {
  const NineScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        resizeToAvoidBottomInset: false,
        appBar: _buildAppBar(),
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.symmetric(
            horizontal: 14.h,
            vertical: 4.v,
          ),
          child: Column(
            children: [
              Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      SizedBox(
                        height: 105.adaptSize,
                        width: 105.adaptSize,
                        child: Stack(
                          alignment: Alignment.topRight,
                          children: [
                            Align(
                              alignment: Alignment.center,
                              child: Container(
                                height: 105.adaptSize,
                                width: 105.adaptSize,
                                padding: EdgeInsets.symmetric(horizontal: 14.h),
                                decoration: AppDecoration.fillPrimary.copyWith(
                                  borderRadius:
                                      BorderRadiusStyle.roundedBorder52,
                                ),
                                child: CustomImageView(
                                  imagePath: ImageConstant.imgThumbsUp,
                                  height: 88.v,
                                  width: 73.h,
                                  alignment: Alignment.bottomCenter,
                                ),
                              ),
                            ),
                            CustomIconButton(
                              height: 31.v,
                              width: 32.h,
                              padding: EdgeInsets.all(3.h),
                              decoration: IconButtonStyleHelper.outlineBlack,
                              alignment: Alignment.topRight,
                              child: CustomImageView(
                                imagePath: ImageConstant.imgEdit,
                              ),
                            ),
                          ],
                        ),
                      ),
                      SizedBox(height: 15.v),
                      Text(
                        "lbl_user".tr,
                        style: CustomTextStyles.titleSmallPoppins,
                      ),
                    ],
                  ),
                  CustomImageView(
                    imagePath: ImageConstant.imgEditWhiteA700,
                    height: 22.v,
                    width: 21.h,
                    margin: EdgeInsets.only(
                      left: 3.h,
                      top: 117.v,
                      bottom: 2.v,
                    ),
                  ),
                ],
              ),
              SizedBox(height: 23.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 28.h),
                  child: Text(
                    "lbl_email".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
              ),
              SizedBox(height: 8.v),
              CustomTextFormField(
                controller: controller.contentController,
                textInputAction: TextInputAction.done,
              ),
              SizedBox(height: 29.v),
              Align(
                alignment: Alignment.centerLeft,
                child: Padding(
                  padding: EdgeInsets.only(left: 25.h),
                  child: Text(
                    "lbl_phone_number".tr,
                    style: theme.textTheme.titleSmall,
                  ),
                ),
              ),
              SizedBox(height: 8.v),
              Container(
                height: 56.v,
                width: 343.h,
                decoration: BoxDecoration(
                  color: appTheme.whiteA700,
                  borderRadius: BorderRadius.circular(
                    28.h,
                  ),
                  border: Border.all(
                    color: theme.colorScheme.primary,
                    width: 1.h,
                  ),
                  boxShadow: [
                    BoxShadow(
                      color: appTheme.lightGreen4003f,
                      spreadRadius: 2.h,
                      blurRadius: 2.h,
                      offset: Offset(
                        0,
                        0,
                      ),
                    ),
                  ],
                ),
              ),
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
        imagePath: ImageConstant.imgBackNavsPrimary,
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
}
