import '../controller/seventeen_controller.dart';
import 'package:get/get.dart';

/// A binding class for the SeventeenScreen.
///
/// This class ensures that the SeventeenController is created when the
/// SeventeenScreen is first loaded.
class SeventeenBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => SeventeenController());
  }
}
