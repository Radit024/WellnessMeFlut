import '../../../core/app_export.dart';

/// This class is used in the [gallery_item_widget] screen.
class GalleryItemModel {
  GalleryItemModel({
    this.paintingImage,
    this.paintingName,
    this.duration,
    this.id,
  }) {
    paintingImage = paintingImage ?? Rx(ImageConstant.imgRectangle2365x65);
    paintingName = paintingName ?? Rx("Painting Forest");
    duration = duration ?? Rx("20 Min");
    id = id ?? Rx("");
  }

  Rx<String>? paintingImage;

  Rx<String>? paintingName;

  Rx<String>? duration;

  Rx<String>? id;
}
