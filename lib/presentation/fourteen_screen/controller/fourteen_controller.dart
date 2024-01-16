import 'package:wellnessmeflut/core/app_export.dart';
import 'package:wellnessmeflut/presentation/fourteen_screen/models/fourteen_model.dart';

/// A controller class for the FourteenScreen.
///
/// This class manages the state of the FourteenScreen, including the
/// current fourteenModelObj
class FourteenController extends GetxController {
  Rx<FourteenModel> fourteenModelObj = FourteenModel().obs;
}
