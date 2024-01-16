import 'package:wellnessmef/core/app_export.dart';
import 'package:wellnessmef/presentation/twelve_screen/models/twelve_model.dart';
import 'package:easy_date_timeline/easy_date_timeline.dart';

/// A controller class for the TwelveScreen.
///
/// This class manages the state of the TwelveScreen, including the
/// current twelveModelObj
class TwelveController extends GetxController {
  Rx<TwelveModel> twelveModelObj = TwelveModel().obs;

  Rx<DateTime> selectedDatesFromCalendar1 = DateTime.now().obs;

  Rx<bool> isSelectedSwitch = false.obs;
}
