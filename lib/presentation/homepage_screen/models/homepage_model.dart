import 'clienttestimonials_item_model.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [homepage_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class HomepageModel {
  Rx<List<ClienttestimonialsItemModel>> clienttestimonialsItemList =
      Rx(List.generate(1, (index) => ClienttestimonialsItemModel()));
}
