import 'package:wellnessmef/core/app_export.dart';
import 'package:wellnessmef/presentation/eleven_screen/models/eleven_model.dart';

/// A controller class for the ElevenScreen.
///
/// This class manages the state of the ElevenScreen, including the
/// current elevenModelObj
class ElevenController extends GetxController {
  Rx<ElevenModel> elevenModelObj = ElevenModel().obs;
}
