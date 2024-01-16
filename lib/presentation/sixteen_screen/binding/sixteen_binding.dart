import '../controller/sixteen_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SixteenScreen.
///
/// This class ensures that the SixteenController is created when the
/// SixteenScreen is first loaded.
class SixteenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SixteenController());
  }
}
