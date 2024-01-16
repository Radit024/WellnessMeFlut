import '../controller/fourteen_controller.dart';
import '../models/list_item_model.dart';
import 'package:flutter/material.dart';
import 'package:wellnessmeflut/core/app_export.dart';

// ignore: must_be_immutable
class ListItemWidget extends StatelessWidget {
  ListItemWidget(
    this.listItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ListItemModel listItemModelObj;

  var controller = Get.find<FourteenController>();

  @override
  Widget build(BuildContext context) {
    return Opacity(
      opacity: 0.2,
      child: Container(
        height: 140.v,
        width: 315.h,
        decoration: BoxDecoration(
          color: appTheme.deepPurpleA100.withOpacity(0.42),
          borderRadius: BorderRadius.circular(
            22.h,
          ),
        ),
      ),
    );
  }
}
