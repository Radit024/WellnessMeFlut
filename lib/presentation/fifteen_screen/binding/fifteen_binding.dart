import '../controller/fifteen_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FifteenScreen.
///
/// This class ensures that the FifteenController is created when the
/// FifteenScreen is first loaded.
class FifteenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FifteenController());
  }
}
