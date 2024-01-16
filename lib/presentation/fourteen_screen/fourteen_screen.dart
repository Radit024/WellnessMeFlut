import '../fourteen_screen/widgets/list_item_widget.dart';
import 'controller/fourteen_controller.dart';
import 'models/list_item_model.dart';
import 'package:flutter/material.dart';
import 'package:wellnessmeflut/core/app_export.dart';
import 'package:wellnessmeflut/widgets/app_bar/appbar_leading_iconbutton.dart';
import 'package:wellnessmeflut/widgets/app_bar/appbar_subtitle_one.dart';
import 'package:wellnessmeflut/widgets/app_bar/custom_app_bar.dart';

class FourteenScreen extends GetWidget<FourteenController> {
  const FourteenScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SafeArea(
        child: Scaffold(
            appBar: _buildAppBar(),
            body: Padding(
                padding: EdgeInsets.only(left: 30.h, top: 39.v, right: 15.h),
                child: Obx(() => ListView.separated(
                    physics: NeverScrollableScrollPhysics(),
                    shrinkWrap: true,
                    separatorBuilder: (context, index) {
                      return SizedBox(height: 1.v);
                    },
                    itemCount: controller
                        .fourteenModelObj.value.listItemList.value.length,
                    itemBuilder: (context, index) {
                      ListItemModel model = controller
                          .fourteenModelObj.value.listItemList.value[index];
                      return ListItemWidget(model);
                    })))));
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
        title: AppbarSubtitleOne(
            text: "msg_meditation_relaxation".tr,
            margin: EdgeInsets.only(left: 42.h)));
  }

  /// Navigates to the previous screen.
  onTapArrowLeft() {
    Get.back();
  }
}
