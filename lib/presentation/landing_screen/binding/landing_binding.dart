import '../controller/landing_controller.dart';
import 'package:get/get.dart';

/// A binding class for the LandingScreen.
///
/// This class ensures that the LandingController is created when the
/// LandingScreen is first loaded.
class LandingBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => LandingController());
  }
}
