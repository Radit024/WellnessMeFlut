import '../../../core/app_export.dart';
import 'userprofile_item_model.dart';

/// This class defines the variables used in the [eighteen_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class EighteenModel {
  Rx<List<UserprofileItemModel>> userprofileItemList = Rx([
    UserprofileItemModel(
        doctorName: "Dr. Marcus Horizon".obs,
        appointmentTime: "10.24".obs,
        symptoms: "I don,t have any fever, but headchace...".obs,
        priorityLevel: "1".obs),
    UserprofileItemModel(
        doctorName: "Dr. Alysa Hana".obs,
        appointmentTime: "Hello, How can i help you?".obs,
        symptoms: "09:04".obs),
    UserprofileItemModel(
        doctorName: "Dr. Maria Elena".obs,
        appointmentTime: "Do you have fever?".obs,
        symptoms: "08:57".obs)
  ]);
}
