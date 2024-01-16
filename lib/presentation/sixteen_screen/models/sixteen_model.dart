import '../../../core/app_export.dart';
import 'gallery_item_model.dart';

/// This class defines the variables used in the [sixteen_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class SixteenModel {
  Rx<List<GalleryItemModel>> galleryItemList = Rx([
    GalleryItemModel(
        paintingImage: ImageConstant.imgRectangle2365x65.obs,
        paintingName: "Painting Forest".obs,
        duration: "20 Min".obs),
    GalleryItemModel(
        paintingImage: ImageConstant.imgRectangle25.obs,
        paintingName: "Mountaineers".obs,
        duration: "15 Min".obs),
    GalleryItemModel(
        paintingImage: ImageConstant.imgRectangle26.obs,
        paintingName: "Lovely Deserts".obs,
        duration: "39 Min".obs),
    GalleryItemModel(
        paintingImage: ImageConstant.imgRectangle28.obs,
        paintingName: "The Hill Sides".obs,
        duration: "50 Min".obs)
  ]);
}
