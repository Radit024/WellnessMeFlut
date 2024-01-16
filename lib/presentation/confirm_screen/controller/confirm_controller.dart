import 'package:wellnessmef/core/app_export.dart';
import 'package:wellnessmef/presentation/confirm_screen/models/confirm_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the ConfirmScreen.
///
/// This class manages the state of the ConfirmScreen, including the
/// current confirmModelObj
class ConfirmController extends GetxController {
  TextEditingController passwordController = TextEditingController();

  TextEditingController passwordController1 = TextEditingController();

  Rx<ConfirmModel> confirmModelObj = ConfirmModel().obs;

  Rx<bool> isShowPassword = true.obs;

  @override
  void onClose() {
    super.onClose();
    passwordController.dispose();
    passwordController1.dispose();
  }
}
