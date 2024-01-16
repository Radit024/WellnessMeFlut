import '../homepage_screen/widgets/clienttestimonials_item_widget.dart';
import 'controller/homepage_controller.dart';
import 'models/clienttestimonials_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:wellnessmef/core/app_export.dart';
import 'package:wellnessmef/widgets/custom_elevated_button.dart';
import 'package:wellnessmef/widgets/custom_icon_button.dart';

// ignore_for_file: must_be_immutable
class HomepageScreen extends GetWidget<HomepageController> {
  const HomepageScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 13.h,
            top: 86.v,
            right: 13.h,
          ),
          child: Column(
            children: [
              Padding(
                padding: EdgeInsets.only(
                  left: 39.h,
                  right: 29.h,
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          "lbl_welcome_back".tr,
                          style: theme.textTheme.bodySmall,
                        ),
                        SizedBox(height: 8.v),
                        Text(
                          "lbl_user".tr,
                          style: CustomTextStyles.titleLargePoppins,
                        ),
                      ],
                    ),
                    CustomIconButton(
                      height: 55.adaptSize,
                      width: 55.adaptSize,
                      decoration: IconButtonStyleHelper.fillPrimaryTL27,
                      child: CustomImageView(
                        imagePath: ImageConstant.imgThumbsUp,
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 23.v),
              _buildPlaylist(),
              SizedBox(height: 4.v),
              Align(
                alignment: Alignment.centerRight,
                child: Padding(
                  padding: EdgeInsets.only(
                    left: 56.h,
                    right: 29.h,
                  ),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      CustomElevatedButton(
                        width: 95.h,
                        text: "lbl_view_more".tr,
                        margin: EdgeInsets.only(bottom: 3.v),
                      ),
                      CustomElevatedButton(
                        width: 95.h,
                        text: "lbl_view_more".tr,
                        margin: EdgeInsets.only(top: 3.v),
                      ),
                    ],
                  ),
                ),
              ),
              SizedBox(height: 13.v),
              _buildClientTestimonials(),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildPlaylist() {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(left: 21.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 34.v,
              ),
              decoration: AppDecoration.outlineGray90011.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder22,
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  SizedBox(height: 6.v),
                  SizedBox(
                    width: 103.h,
                    child: Text(
                      "msg_meditation_relaxation2".tr,
                      maxLines: 2,
                      overflow: TextOverflow.ellipsis,
                      style: CustomTextStyles.titleMediumMedium.copyWith(
                        height: 1.13,
                      ),
                    ),
                  ),
                  SizedBox(height: 67.v),
                  CustomImageView(
                    imagePath: ImageConstant.imgPurpleGraph,
                    height: 140.v,
                    width: 110.h,
                    radius: BorderRadius.circular(
                      12.h,
                    ),
                  ),
                ],
              ),
            ),
            Padding(
              padding: EdgeInsets.only(
                left: 19.h,
                top: 3.v,
                bottom: 6.v,
              ),
              child: Column(
                children: [
                  SizedBox(
                    height: 152.v,
                    width: 156.h,
                    child: Stack(
                      alignment: Alignment.center,
                      children: [
                        Align(
                          alignment: Alignment.topLeft,
                          child: Container(
                            width: 62.h,
                            margin: EdgeInsets.only(
                              left: 16.h,
                              top: 25.v,
                            ),
                            child: Text(
                              "lbl_activity_status".tr,
                              maxLines: 2,
                              overflow: TextOverflow.ellipsis,
                              style: CustomTextStyles.titleMediumGray90004
                                  .copyWith(
                                height: 1.50,
                              ),
                            ),
                          ),
                        ),
                        Align(
                          alignment: Alignment.center,
                          child: Container(
                            padding: EdgeInsets.symmetric(
                              horizontal: 17.h,
                              vertical: 11.v,
                            ),
                            decoration: AppDecoration.fillGray90002.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder16,
                            ),
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                SizedBox(
                                  width: 70.h,
                                  child: Text(
                                    "msg_average_sleep_time".tr,
                                    maxLines: 3,
                                    overflow: TextOverflow.ellipsis,
                                    style: CustomTextStyles.bodyMediumWhiteA700,
                                  ),
                                ),
                                SizedBox(height: 3.v),
                                Row(
                                  children: [
                                    RichText(
                                      text: TextSpan(
                                        children: [
                                          TextSpan(
                                            text: "lbl_6_22".tr,
                                            style:
                                                theme.textTheme.displayMedium,
                                          ),
                                          TextSpan(
                                            text: " ",
                                          ),
                                        ],
                                      ),
                                      textAlign: TextAlign.left,
                                    ),
                                    Container(
                                      width: 45.h,
                                      margin: EdgeInsets.only(
                                        left: 6.h,
                                        top: 20.v,
                                        bottom: 6.v,
                                      ),
                                      child: Text(
                                        "lbl_hours_per_day".tr,
                                        maxLines: 2,
                                        overflow: TextOverflow.ellipsis,
                                        style: CustomTextStyles.bodySmall_1,
                                      ),
                                    ),
                                  ],
                                ),
                              ],
                            ),
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 13.v),
                  Card(
                    clipBehavior: Clip.antiAlias,
                    elevation: 0,
                    color: appTheme.gray90001,
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadiusStyle.roundedBorder22,
                    ),
                    child: Container(
                      height: 150.v,
                      width: 157.h,
                      padding: EdgeInsets.symmetric(
                        horizontal: 20.h,
                        vertical: 9.v,
                      ),
                      decoration: AppDecoration.outlineGray90011.copyWith(
                        borderRadius: BorderRadiusStyle.roundedBorder22,
                      ),
                      child: Stack(
                        alignment: Alignment.center,
                        children: [
                          CustomImageView(
                            imagePath: ImageConstant.imgBlueGraph,
                            height: 65.v,
                            width: 115.h,
                            radius: BorderRadius.circular(
                              12.h,
                            ),
                            alignment: Alignment.bottomCenter,
                          ),
                          Align(
                            alignment: Alignment.center,
                            child: Column(
                              mainAxisSize: MainAxisSize.min,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "lbl_sleep_tracker".tr,
                                  style: theme.textTheme.labelLarge,
                                ),
                                SizedBox(height: 5.v),
                                RichText(
                                  text: TextSpan(
                                    children: [
                                      TextSpan(
                                        text: "lbl_8".tr,
                                        style: CustomTextStyles
                                            .titleSmallPoppinsffe9d894,
                                      ),
                                      TextSpan(
                                        text: "lbl_h".tr,
                                        style: CustomTextStyles
                                            .labelMediumffe9d894,
                                      ),
                                      TextSpan(
                                        text: " ",
                                      ),
                                      TextSpan(
                                        text: "lbl_20".tr,
                                        style: CustomTextStyles
                                            .titleSmallPoppinsffe9d894,
                                      ),
                                      TextSpan(
                                        text: "lbl_m".tr,
                                        style: CustomTextStyles
                                            .labelMediumffe9d894,
                                      ),
                                    ],
                                  ),
                                  textAlign: TextAlign.left,
                                ),
                                SizedBox(height: 7.v),
                                CustomImageView(
                                  imagePath: ImageConstant.imgPurpleGraph65x115,
                                  height: 65.v,
                                  width: 115.h,
                                  radius: BorderRadius.circular(
                                    12.h,
                                  ),
                                ),
                              ],
                            ),
                          ),
                        ],
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildClientTestimonials() {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16.h),
      child: Obx(
        () => CarouselSlider.builder(
          options: CarouselOptions(
            height: 146.v,
            initialPage: 0,
            autoPlay: true,
            viewportFraction: 1.0,
            enableInfiniteScroll: false,
            scrollDirection: Axis.horizontal,
            onPageChanged: (
              index,
              reason,
            ) {
              controller.sliderIndex.value = index;
            },
          ),
          itemCount: controller
              .homepageModelObj.value.clienttestimonialsItemList.value.length,
          itemBuilder: (context, index, realIndex) {
            ClienttestimonialsItemModel model = controller
                .homepageModelObj.value.clienttestimonialsItemList.value[index];
            return ClienttestimonialsItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
