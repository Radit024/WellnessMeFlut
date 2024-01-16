import '../controller/nineteen_controller.dart';
import 'package:get/get.dart';

/// A binding class for the NineteenScreen.
///
/// This class ensures that the NineteenController is created when the
/// NineteenScreen is first loaded.
class NineteenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => NineteenController());
  }
}
