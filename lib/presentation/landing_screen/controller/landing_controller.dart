import 'package:wellnessmeflut/core/app_export.dart';
import 'package:wellnessmeflut/presentation/landing_screen/models/landing_model.dart';

/// A controller class for the LandingScreen.
///
/// This class manages the state of the LandingScreen, including the
/// current landingModelObj
class LandingController extends GetxController {
  Rx<LandingModel> landingModelObj = LandingModel().obs;
}
