import 'package:wellnessmeflut/core/app_export.dart';
import 'package:wellnessmeflut/presentation/find_screen/models/find_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the FindScreen.
///
/// This class manages the state of the FindScreen, including the
/// current findModelObj
class FindController extends GetxController {
  TextEditingController phoneNumberController = TextEditingController();

  Rx<FindModel> findModelObj = FindModel().obs;

  @override
  void onClose() {
    super.onClose();
    phoneNumberController.dispose();
  }
}
