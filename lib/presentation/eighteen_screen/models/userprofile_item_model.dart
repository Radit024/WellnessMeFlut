import '../../../core/app_export.dart';

/// This class is used in the [userprofile_item_widget] screen.
class UserprofileItemModel {
  UserprofileItemModel({
    this.doctorName,
    this.appointmentTime,
    this.symptoms,
    this.priorityLevel,
    this.id,
  }) {
    doctorName = doctorName ?? Rx("Dr. Marcus Horizon");
    appointmentTime = appointmentTime ?? Rx("10.24");
    symptoms = symptoms ?? Rx("I don,t have any fever, but headchace...");
    priorityLevel = priorityLevel ?? Rx("1");
    id = id ?? Rx("");
  }

  Rx<String>? doctorName;

  Rx<String>? appointmentTime;

  Rx<String>? symptoms;

  Rx<String>? priorityLevel;

  Rx<String>? id;
}
