import 'package:wellnessmeflut/core/app_export.dart';
import 'package:wellnessmeflut/presentation/profile_screen/models/profile_model.dart';

/// A controller class for the ProfileScreen.
///
/// This class manages the state of the ProfileScreen, including the
/// current profileModelObj
class ProfileController extends GetxController {
  Rx<ProfileModel> profileModelObj = ProfileModel().obs;

  Rx<bool> isSelectedSwitch = false.obs;

  Rx<bool> contactUs = false.obs;
}
