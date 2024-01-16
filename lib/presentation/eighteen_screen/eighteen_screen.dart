import '../eighteen_screen/widgets/userprofile_item_widget.dart';
import 'controller/eighteen_controller.dart';
import 'models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:wellnessmeflut/core/app_export.dart';
import 'package:wellnessmeflut/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:wellnessmeflut/widgets/app_bar/appbar_title.dart';
import 'package:wellnessmeflut/widgets/app_bar/appbar_trailing_image.dart';
import 'package:wellnessmeflut/widgets/app_bar/custom_app_bar.dart';
import 'package:wellnessmeflut/widgets/custom_floating_button.dart';

class EighteenScreen extends GetWidget<EighteenController> {
  const EighteenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            backgroundColor: appTheme.gray90001,
            appBar: _buildAppBar(),
            body: Padding(
                padding: EdgeInsets.fromLTRB(80.h, 61.v, 25.h, 61.v),
                child: Obx(() => ListView.separated(
                    physics: BouncingScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: 28.v);
                    },
                    itemCount: controller.eighteenModelObj.value
                        .userprofileItemList.value.length,
                    itemBuilder: (context, index) {
                      UserprofileItemModel model = controller.eighteenModelObj
                          .value.userprofileItemList.value[index];
                      return UserprofileItemWidget(model);
                    }))),
            floatingActionButton: _buildFloatingActionButton()));
  }

  /// Section Widget
  PreferredSizeWidget _buildAppBar() {
    return CustomAppBar(
        leadingWidth: 57.h,
        leading: AppbarLeadingIconbutton(
            imagePath: ImageConstant.imgArrowLeft,
            margin: EdgeInsets.only(left: 25.h, top: 11.v, bottom: 12.v),
            onTap: () {
              onTapArrowLeft();
            }),
        centerTitle: true,
        title: AppbarTitle(text: "lbl_message".tr),
        actions: [
          AppbarTrailingImage(
              imagePath: ImageConstant.imgArrowDown,
              margin: EdgeInsets.fromLTRB(5.h, 11.v, 5.h, 20.v))
        ]);
  }

  /// Section Widget
  Widget _buildFloatingActionButton() {
    return CustomFloatingButton(
        height: 55,
        width: 55,
        backgroundColor: theme.colorScheme.primary,
        child: CustomImageView(
            imagePath: ImageConstant.imgPlus, height: 27.5.v, width: 27.5.h));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
