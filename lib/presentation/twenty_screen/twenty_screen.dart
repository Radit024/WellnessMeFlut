import '../twenty_screen/widgets/bannersection_item_widget.dart';
import 'controller/twenty_controller.dart';
import 'models/bannersection_item_model.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:wellnessmeflut/core/app_export.dart';
import 'package:wellnessmeflut/widgets/custom_elevated_button.dart';

// ignore_for_file: must_be_immutable
class TwentyScreen extends GetWidget<TwentyController> {
  const TwentyScreen({Key? key})
      : super(
          key: key,
        );

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: appTheme.gray90001,
        body: Container(
          width: double.maxFinite,
          padding: EdgeInsets.only(
            left: 21.h,
            top: 68.v,
            right: 21.h,
          ),
          child: Column(
            children: [
              _buildWelcomeBackSection(),
              SizedBox(height: 12.v),
              _buildSleepSection(),
              Padding(
                padding: EdgeInsets.only(
                  left: 41.h,
                  right: 35.h,
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
              SizedBox(height: 25.v),
              _buildBannerSection(),
              SizedBox(height: 5.v),
            ],
          ),
        ),
      ),
    );
  }

  /// Section Widget
  Widget _buildWelcomeBackSection() {
    return Container(
      margin: EdgeInsets.only(left: 1.h),
      padding: EdgeInsets.symmetric(
        horizontal: 30.h,
        vertical: 13.v,
      ),
      decoration: AppDecoration.fillBluegray100.copyWith(
        borderRadius: BorderRadiusStyle.circleBorder44,
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: EdgeInsets.only(bottom: 4.v),
            child: Column(
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
          ),
          CustomImageView(
            imagePath: ImageConstant.imgThumbsUp,
            height: 46.v,
            width: 38.h,
            margin: EdgeInsets.only(
              top: 11.v,
              bottom: 3.v,
            ),
          ),
        ],
      ),
    );
  }

  /// Section Widget
  Widget _buildSleepSection() {
    return Align(
      alignment: Alignment.centerRight,
      child: Padding(
        padding: EdgeInsets.only(left: 17.h),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.end,
          children: [
            Container(
              margin: EdgeInsets.only(bottom: 3.v),
              padding: EdgeInsets.symmetric(
                horizontal: 20.h,
                vertical: 34.v,
              ),
              decoration: AppDecoration.outlineGray900114.copyWith(
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
                left: 5.h,
                top: 18.v,
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
                            decoration: AppDecoration.fillGray900.copyWith(
                              borderRadius: BorderRadiusStyle.roundedBorder16,
                            ),
                            child: Row(
                              mainAxisAlignment: MainAxisAlignment.center,
                              children: [
                                Container(
                                  height: 125.v,
                                  width: 70.h,
                                  margin: EdgeInsets.only(bottom: 3.v),
                                  child: Stack(
                                    alignment: Alignment.bottomCenter,
                                    children: [
                                      Align(
                                        alignment: Alignment.topCenter,
                                        child: SizedBox(
                                          width: 70.h,
                                          child: Text(
                                            "msg_average_sleep_time".tr,
                                            maxLines: 3,
                                            overflow: TextOverflow.ellipsis,
                                            style: CustomTextStyles
                                                .bodyMediumWhiteA700,
                                          ),
                                        ),
                                      ),
                                      Align(
                                        alignment: Alignment.bottomCenter,
                                        child: RichText(
                                          text: TextSpan(
                                            children: [
                                              TextSpan(
                                                text: "lbl_6_22".tr,
                                                style: theme
                                                    .textTheme.displayMedium,
                                              ),
                                              TextSpan(
                                                text: " ",
                                              ),
                                            ],
                                          ),
                                          textAlign: TextAlign.left,
                                        ),
                                      ),
                                    ],
                                  ),
                                ),
                                Container(
                                  width: 45.h,
                                  margin: EdgeInsets.only(
                                    left: 4.h,
                                    top: 81.v,
                                    bottom: 9.v,
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
                          ),
                        ),
                      ],
                    ),
                  ),
                  SizedBox(height: 7.v),
                  Container(
                    margin: EdgeInsets.only(right: 3.h),
                    padding: EdgeInsets.symmetric(
                      horizontal: 20.h,
                      vertical: 3.v,
                    ),
                    decoration: AppDecoration.outlineGray900114.copyWith(
                      borderRadius: BorderRadiusStyle.roundedBorder22,
                    ),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        SizedBox(height: 18.v),
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
                                style:
                                    CustomTextStyles.titleSmallPoppinsffe9d894,
                              ),
                              TextSpan(
                                text: "lbl_h".tr,
                                style: CustomTextStyles.labelMediumffe9d894,
                              ),
                              TextSpan(
                                text: " ",
                              ),
                              TextSpan(
                                text: "lbl_20".tr,
                                style:
                                    CustomTextStyles.titleSmallPoppinsffe9d894,
                              ),
                              TextSpan(
                                text: "lbl_m".tr,
                                style: CustomTextStyles.labelMediumffe9d894,
                              ),
                            ],
                          ),
                          textAlign: TextAlign.left,
                        ),
                        SizedBox(height: 7.v),
                        CustomImageView(
                          imagePath: ImageConstant.imgSleepGraphDeepPurpleA100,
                          height: 78.v,
                          width: 115.h,
                        ),
                      ],
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
  Widget _buildBannerSection() {
    return Padding(
      padding: EdgeInsets.only(
        left: 7.h,
        right: 11.h,
      ),
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
              .twentyModelObj.value.bannersectionItemList.value.length,
          itemBuilder: (context, index, realIndex) {
            BannersectionItemModel model = controller
                .twentyModelObj.value.bannersectionItemList.value[index];
            return BannersectionItemWidget(
              model,
            );
          },
        ),
      ),
    );
  }
}
