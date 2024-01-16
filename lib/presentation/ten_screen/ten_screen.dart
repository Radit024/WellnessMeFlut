import 'controller/ten_controller.dart';
import 'package:flutter/material.dart';
import 'package:wellnessmeflut/core/app_export.dart';
import 'package:wellnessmeflut/widgets/app_bar/appbar_leading_iconbutton_one.dart';
import 'package:wellnessmeflut/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:wellnessmeflut/widgets/app_bar/custom_app_bar.dart';
import 'package:wellnessmeflut/widgets/custom_text_form_field.dart';

// ignore_for_file: must_be_immutable
class TenScreen extends GetWidget<TenController> {
  const TenScreen({Key? key})
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
            horizontal: 15.h,
            vertical: 35.v,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Padding(
                padding: EdgeInsets.only(left: 18.h),
                child: Text(
                  "lbl_email".tr,
                  style: theme.textTheme.titleSmall,
                ),
              ),
              SizedBox(height: 18.v),
              CustomTextFormField(
                controller: controller.contentController,
              ),
              SizedBox(height: 17.v),
              Padding(
                padding: EdgeInsets.only(left: 6.h),
                child: Text(
                  "lbl_phone_number".tr,
                  style: theme.textTheme.titleSmall,
                ),
              ),
              SizedBox(height: 17.v),
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
              SizedBox(height: 17.v),
              Padding(
                padding: EdgeInsets.only(left: 15.h),
                child: Text(
                  "lbl_name".tr,
                  style: theme.textTheme.titleSmall,
                ),
              ),
              SizedBox(height: 18.v),
              CustomTextFormField(
                controller: controller.contentController1,
                textInputAction: TextInputAction.done,
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
      leadingWidth: 53.h,
      leading: AppbarLeadingIconbuttonOne(
        imagePath: ImageConstant.imgBackNavsPrimary,
        margin: EdgeInsets.only(
          left: 21.h,
          top: 11.v,
          bottom: 12.v,
        ),
      ),
      centerTitle: true,
      title: AppbarSubtitleOne(
        text: "lbl_personal_data2".tr,
      ),
    );
  }
}
