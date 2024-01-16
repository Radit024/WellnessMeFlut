import '../controller/eighteen_controller.dart';
import 'package:get/get.dart';

/// A binding class for the EighteenScreen.
///
/// This class ensures that the EighteenController is created when the
/// EighteenScreen is first loaded.
class EighteenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => EighteenController());
  }
}
