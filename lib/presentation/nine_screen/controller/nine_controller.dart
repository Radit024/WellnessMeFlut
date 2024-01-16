import 'package:wellnessmeflut/core/app_export.dart';
import 'package:wellnessmeflut/presentation/nine_screen/models/nine_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the NineScreen.
///
/// This class manages the state of the NineScreen, including the
/// current nineModelObj
class NineController extends GetxController {
  TextEditingController contentController = TextEditingController();

  Rx<NineModel> nineModelObj = NineModel().obs;

  @override
  void onClose() {
    super.onClose();
    contentController.dispose();
  }
}
