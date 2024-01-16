import 'package:wellnessmef/core/app_export.dart';
import 'package:wellnessmef/presentation/homepage_screen/models/homepage_model.dart';

/// A controller class for the HomepageScreen.
///
/// This class manages the state of the HomepageScreen, including the
/// current homepageModelObj
class HomepageController extends GetxController {
  Rx<HomepageModel> homepageModelObj = HomepageModel().obs;

  Rx<int> sliderIndex = 0.obs;
}
