import '../controller/twenty_controller.dart';
import '../models/bannersection_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:wellnessmef/core/app_export.dart';
import 'package:wellnessmef/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class BannersectionItemWidget extends StatelessWidget {
  BannersectionItemWidget(
    this.bannersectionItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  BannersectionItemModel bannersectionItemModelObj;

  var controller = Get.find<TwentyController>();

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(
        horizontal: 20.h,
        vertical: 25.v,
      ),
      decoration: AppDecoration.outlineIndigoA1004c.copyWith(
        borderRadius: BorderRadiusStyle.roundedBorder22,
        image: DecorationImage(
          image: fs.Svg(
            ImageConstant.imgBanner,
          ),
          fit: BoxFit.cover,
        ),
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            "lbl_consultation".tr,
            style: CustomTextStyles.titleSmallPoppinsSemiBold,
          ),
          SizedBox(height: 5.v),
          Text(
            "msg_come_consult_with".tr,
            style: theme.textTheme.bodySmall,
          ),
          SizedBox(height: 15.v),
          CustomElevatedButton(
            width: 95.h,
            text: "lbl_view_more".tr,
          ),
        ],
      ),
    );
  }
}
