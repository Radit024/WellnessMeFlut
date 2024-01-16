import 'package:wellnessmeflut/core/app_export.dart';
import 'package:wellnessmeflut/presentation/otp_screen/models/otp_model.dart';
import 'package:flutter/material.dart';

/// A controller class for the OtpScreen.
///
/// This class manages the state of the OtpScreen, including the
/// current otpModelObj
class OtpController extends GetxController {
  TextEditingController contentController = TextEditingController();

  Rx<OtpModel> otpModelObj = OtpModel().obs;

  @override
  void onClose() {
    super.onClose();
    contentController.dispose();
  }
}
