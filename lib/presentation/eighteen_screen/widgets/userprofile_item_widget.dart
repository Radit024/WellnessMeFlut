import '../controller/eighteen_controller.dart';
import '../models/userprofile_item_model.dart';
import 'package:flutter/material.dart';
import 'package:wellnessmeflut/core/app_export.dart';

// ignore: must_be_immutable
class UserprofileItemWidget extends StatelessWidget {
  UserprofileItemWidget(
    this.userprofileItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  UserprofileItemModel userprofileItemModelObj;

  var controller = Get.find<EighteenController>();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Obx(
              () => Text(
                userprofileItemModelObj.doctorName!.value,
                style: CustomTextStyles.titleMediumInter,
              ),
            ),
            Padding(
              padding: EdgeInsets.only(top: 3.v),
              child: Obx(
                () => Text(
                  userprofileItemModelObj.appointmentTime!.value,
                  style: CustomTextStyles.bodySmallInter,
                ),
              ),
            ),
          ],
        ),
        SizedBox(height: 4.v),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Obx(
              () => Text(
                userprofileItemModelObj.symptoms!.value,
                style: CustomTextStyles.bodySmallInter,
              ),
            ),
            Container(
              width: 13.adaptSize,
              margin: EdgeInsets.only(
                left: 33.h,
                bottom: 2.v,
              ),
              padding: EdgeInsets.symmetric(
                horizontal: 4.h,
                vertical: 1.v,
              ),
              decoration: AppDecoration.fillBlue.copyWith(
                borderRadius: BorderRadiusStyle.roundedBorder8,
              ),
              child: Obx(
                () => Text(
                  userprofileItemModelObj.priorityLevel!.value,
                  style: theme.textTheme.labelSmall,
                ),
              ),
            ),
          ],
        ),
      ],
    );
  }
}
