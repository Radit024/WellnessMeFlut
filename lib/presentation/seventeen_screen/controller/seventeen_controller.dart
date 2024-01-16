import 'package:wellnessmeflut/core/app_export.dart';
import 'package:wellnessmeflut/presentation/seventeen_screen/models/seventeen_model.dart';

/// A controller class for the SeventeenScreen.
///
/// This class manages the state of the SeventeenScreen, including the
/// current seventeenModelObj
class SeventeenController extends GetxController {
  Rx<SeventeenModel> seventeenModelObj = SeventeenModel().obs;
}
