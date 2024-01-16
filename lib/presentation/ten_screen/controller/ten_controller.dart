import 'package:wellnessmef/core/app_export.dart';
import 'package:wellnessmef/presentation/ten_screen/models/ten_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the TenScreen.
///
/// This class manages the state of the TenScreen, including the
/// current tenModelObj
class TenController extends GetxController {
  TextEditingController contentController = TextEditingController();

  TextEditingController contentController1 = TextEditingController();

  Rx<TenModel> tenModelObj = TenModel().obs;

  @override
  void onClose() {
    super.onClose();
    contentController.dispose();
    contentController1.dispose();
  }
}
