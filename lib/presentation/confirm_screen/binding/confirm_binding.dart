import '../controller/confirm_controller.dart';
import 'package:get/get.dart';

/// A binding class for the ConfirmScreen.
///
/// This class ensures that the ConfirmController is created when the
/// ConfirmScreen is first loaded.
class ConfirmBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => ConfirmController());
  }
}
