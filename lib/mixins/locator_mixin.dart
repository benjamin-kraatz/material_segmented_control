import '../segmented_item_settings.dart';

/// Makes MaterialSegmentedControl class able to contact its children
mixin SegmentedLocatorMixin {
  /// An item is the last item
  void setLastItem();

  /// An item is the first item
  void setFirstItem();

  /// Check if an item is the first or last item
  void setItemPosition(int index, int maxCount);

  /// Sets up an item with specified settings
  void setup(SegmentedItemSettings settings);

  /// Sets an item initially selected
  void setInitiallySelected(bool isInitialSelect);
}
