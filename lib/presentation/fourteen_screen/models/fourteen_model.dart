import 'list_item_model.dart';
import '../../../core/app_export.dart';

/// This class defines the variables used in the [fourteen_screen],
/// and is typically used to hold data that is passed between different parts of the application.
class FourteenModel {
  Rx<List<ListItemModel>> listItemList =
      Rx(List.generate(7, (index) => ListItemModel()));
}
