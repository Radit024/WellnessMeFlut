import '../sixteen_screen/widgets/gallery_item_widget.dart';
import 'controller/sixteen_controller.dart';
import 'models/gallery_item_model.dart';
import 'package:flutter/material.dart';
import 'package:wellnessmef/core/app_export.dart';
import 'package:wellnessmef/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:wellnessmef/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:wellnessmef/widgets/app_bar/custom_app_bar.dart';
import 'package:wellnessmef/widgets/custom_elevated_button.dart';

class SixteenScreen extends GetWidget<SixteenController> {
  const SixteenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Container(
                width: double.maxFinite,
                padding: EdgeInsets.symmetric(horizontal: 18.h, vertical: 5.v),
                child: Column(children: [
                  _buildRelaxSounds(),
                  SizedBox(height: 39.v),
                  _buildGallery()
                ]))));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 62.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 30.h, top: 12.v, bottom: 12.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarSubtitleOne(text: "lbl_relax_sound".tr));
  }

  /// Section Widget
  Widget _buildRelaxSounds() {
    return SizedBox(
        height: 195.v,
        width: 339.h,
        child: Stack(alignment: Alignment.centerLeft, children: [
          CustomImageView(
              imagePath: ImageConstant.imgRectangle23,
              height: 195.v,
              width: 339.h,
              radius: BorderRadius.circular(20.h),
              alignment: Alignment.center),
          Align(
              alignment: Alignment.centerLeft,
              child: Padding(
                  padding: EdgeInsets.only(left: 37.h, right: 114.h),
                  child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("lbl_relax_sounds".tr,
                            style: theme.textTheme.headlineMedium),
                        Opacity(
                            opacity: 0.9,
                            child: SizedBox(
                                width: 187.h,
                                child: Text("msg_sometimes_the_most".tr,
                                    maxLines: 2,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles
                                        .titleSmallAlegreyaSansWhiteA700Medium
                                        .copyWith(height: 1.20)))),
                        SizedBox(height: 17.v),
                        CustomElevatedButton(
                            height: 39.v,
                            text: "lbl_play_now".tr,
                            margin: EdgeInsets.only(right: 49.h),
                            rightIcon: Container(
                                margin: EdgeInsets.only(left: 12.h),
                                child: CustomImageView(
                                    imagePath:
                                        ImageConstant.imgOverflowmenuBlack900,
                                    height: 13.v,
                                    width: 12.h)),
                            buttonStyle: CustomButtonStyles.fillWhiteA,
                            buttonTextStyle:
                                CustomTextStyles.titleSmallAlegreyaSansBlack900)
                      ])))
        ]));
  }

  /// Section Widget
  Widget _buildGallery() {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.h),
        child: Obx(() => ListView.separated(
            physics: NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            separatorBuilder: (context, index) {
              return SizedBox(height: 21.v);
            },
            itemCount:
                controller.sixteenModelObj.value.galleryItemList.value.length,
            itemBuilder: (context, index) {
              GalleryItemModel model =
                  controller.sixteenModelObj.value.galleryItemList.value[index];
              return GalleryItemWidget(model);
            })));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
