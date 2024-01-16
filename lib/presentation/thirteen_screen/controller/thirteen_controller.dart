import 'package:wellnessmef/core/app_export.dart';
import 'package:wellnessmef/presentation/thirteen_screen/models/thirteen_model.dart';

/// A controller class for the ThirteenScreen.
///
/// This class manages the state of the ThirteenScreen, including the
/// current thirteenModelObj
class ThirteenController extends GetxController {
  Rx<ThirteenModel> thirteenModelObj = ThirteenModel().obs;

  Rx<bool> isSelectedSwitch = false.obs;
}
