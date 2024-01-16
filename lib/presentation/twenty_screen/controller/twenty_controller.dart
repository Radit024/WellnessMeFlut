import 'package:wellnessmeflut/core/app_export.dart';
import 'package:wellnessmeflut/presentation/twenty_screen/models/twenty_model.dart';

/// A controller class for the TwentyScreen.
///
/// This class manages the state of the TwentyScreen, including the
/// current twentyModelObj
class TwentyController extends GetxController {
  Rx<TwentyModel> twentyModelObj = TwentyModel().obs;

  Rx<int> sliderIndex = 0.obs;
}
