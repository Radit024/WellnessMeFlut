import '../controller/find_controller.dart';
import 'package:get/get.dart';

/// A binding class for the FindScreen.
///
/// This class ensures that the FindController is created when the
/// FindScreen is first loaded.
class FindBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut(() => FindController());
  }
}
