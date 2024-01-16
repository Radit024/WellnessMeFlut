import 'package:wellnessmef/core/app_export.dart';
import 'package:wellnessmef/presentation/nineteen_screen/models/nineteen_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the NineteenScreen.
///
/// This class manages the state of the NineteenScreen, including the
/// current nineteenModelObj
class NineteenController extends GetxController {
  TextEditingController messageController = TextEditingController();

  Rx<NineteenModel> nineteenModelObj = NineteenModel().obs;

  @override
  void onClose() {
    super.onClose();
    messageController.dispose();
  }
}
