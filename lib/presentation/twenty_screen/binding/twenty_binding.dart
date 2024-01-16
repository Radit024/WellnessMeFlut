import '../controller/twenty_controller.dart';
import 'package:get/get.dart';

/// A binding class for the TwentyScreen.
///
/// This class ensures that the TwentyController is created when the
/// TwentyScreen is first loaded.
class TwentyBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => TwentyController());
  }
}
