import 'segmented_children.dart';

/// Holds information to set up a [SegmentedItem]
class SegmentedItemSettings {
  /// The current selected item
  static SegmentedItem SelectedItem =
      SegmentedItem(colorSelected: null, colorIdle: null, child: null);

  double _borderRadius;

  /// Define a border radius with [_borderRadius]
  SegmentedItemSettings(this._borderRadius);

  /// Get the current [_borderRadius] setting
  double get borderRadius => _borderRadius;

  /// Sets the border radius to an instance of [SegmentedItemSettings]
  /// and returns it with set value
  SegmentedItemSettings setBorderRadius(double radius) {
    _borderRadius = radius;
    return this;
  }
}

/// Used to define the current selected item
class SegmentedItemSelectorWrapper {
  SegmentedItem selectedItem;
  bool isSelected;

  SegmentedItemSelectorWrapper({this.selectedItem, this.isSelected});

  void setSelectedItem(SegmentedItem item) {
    selectedItem = item;
  }
}

/// Holding information about a public unique key
class Identifier {
  String ident;

  Identifier(this.ident);
}
