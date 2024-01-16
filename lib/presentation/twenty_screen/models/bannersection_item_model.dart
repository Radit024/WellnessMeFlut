import '../../../core/app_export.dart';

/// This class is used in the [bannersection_item_widget] screen.
class BannersectionItemModel {
  BannersectionItemModel({this.id}) {
    id = id ?? Rx("");
  }

  Rx<String>? id;
}
