import 'package:wellnessmef/core/app_export.dart';
import 'package:wellnessmef/presentation/sixteen_screen/models/sixteen_model.dart';

/// A controller class for the SixteenScreen.
///
/// This class manages the state of the SixteenScreen, including the
/// current sixteenModelObj
class SixteenController extends GetxController {
  Rx<SixteenModel> sixteenModelObj = SixteenModel().obs;
}
