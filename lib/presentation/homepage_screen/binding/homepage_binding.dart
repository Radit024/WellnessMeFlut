import '../controller/homepage_controller.dart';
import 'package:get/get.dart';

/// A binding class for the HomepageScreen.
///
/// This class ensures that the HomepageController is created when the
/// HomepageScreen is first loaded.
class HomepageBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => HomepageController());
  }
}
