import '../controller/fourteen_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FourteenScreen.
///
/// This class ensures that the FourteenController is created when the
/// FourteenScreen is first loaded.
class FourteenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FourteenController());
  }
}
