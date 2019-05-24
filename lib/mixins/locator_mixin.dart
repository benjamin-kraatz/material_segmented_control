import '../segmented_children.dart';
import '../segmented_item_settings.dart';

/// Makes MaterialSegmentedControl class able to contact its children
mixin SegmentedLocatorMixin {
  void setLastItem();
  void setFirstItem();
  void setup(SegmentedItemSettings settings);
  void listen(SegmentChosen listener);
  void setUnselected(bool allow);
}
