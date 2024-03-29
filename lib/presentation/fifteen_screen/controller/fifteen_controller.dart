import 'package:wellnessmef/core/app_export.dart';
import 'package:wellnessmef/presentation/fifteen_screen/models/fifteen_model.dart';

/// A controller class for the FifteenScreen.
///
/// This class manages the state of the FifteenScreen, including the
/// current fifteenModelObj
class FifteenController extends GetxController {
  Rx<FifteenModel> fifteenModelObj = FifteenModel().obs;
}
