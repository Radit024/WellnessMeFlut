import '../controller/homepage_controller.dart';
import '../models/clienttestimonials_item_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_svg_provider/flutter_svg_provider.dart' as fs;
import 'package:wellnessmeflut/core/app_export.dart';
import 'package:wellnessmeflut/widgets/custom_elevated_button.dart';

// ignore: must_be_immutable
class ClienttestimonialsItemWidget extends StatelessWidget {
  ClienttestimonialsItemWidget(
    this.clienttestimonialsItemModelObj, {
    Key? key,
  }) : super(
          key: key,
        );

  ClienttestimonialsItemModel clienttestimonialsItemModelObj;

  var controller = Get.find<HomepageController>();

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
