import '../segmented_children.dart';
import '../segmented_item_settings.dart';

/// Makes MaterialSegmentedControl class able to contact its children
mixin SegmentedLocatorMixin {
  /// An item is the last item
  void setLastItem();

  /// An item is the first item
  void setFirstItem();

  /// Sets up an item with specified settings
  void setup(SegmentedItemSettings settings);

  /// Adds a listener to an item
  void listen(SegmentChosen listener);

  /// Unselects an item based on whether it is allowed
  void setUnselected(bool allow);
}
