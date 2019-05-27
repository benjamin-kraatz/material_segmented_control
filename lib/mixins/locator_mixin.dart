import '../segmented_children.dart';
import '../segmented_item_settings.dart';

/// Makes MaterialSegmentedControl class able to contact its children
mixin SegmentedLocatorMixin {
  /// An item is the last item
  void setLastItem();

  /// An item is the first item
  void setFirstItem();

  /// An item is the first item
  void setItemPosition(int index, int maxCount);

  /// Sets up an item with specified settings
  void setup(SegmentedItemSettings settings);
}
