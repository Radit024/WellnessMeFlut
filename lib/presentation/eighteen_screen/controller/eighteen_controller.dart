import 'package:wellnessmef/core/app_export.dart';
import 'package:wellnessmef/presentation/eighteen_screen/models/eighteen_model.dart';

/// A controller class for the EighteenScreen.
///
/// This class manages the state of the EighteenScreen, including the
/// current eighteenModelObj
class EighteenController extends GetxController {
  Rx<EighteenModel> eighteenModelObj = EighteenModel().obs;
}
