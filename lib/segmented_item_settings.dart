import 'segmented_children.dart';

/// Holds information to set up a [SegmentedItem]
class SegmentedItemSettings {
  double _borderRadius;
  bool _isSelectable;

  /// Define a border radius with [_borderRadius]
  /// And if an item can be selected through [_isSelectable]
  SegmentedItemSettings(this._borderRadius, this._isSelectable);

  /// Get the current [_borderRadius] setting
  double get borderRadius => _borderRadius;

  /// Get the current [_isSelectable] setting
  bool get isSelectable => _isSelectable;

  /// Sets the border radius to an instance of [SegmentedItemSettings]
  /// and returns it with set value
  SegmentedItemSettings setBorderRadius(double radius) {
    _borderRadius = radius;
    return this;
  }

  /// Sets the selection state to an instance of [SegmentedItemSettings]
  /// and returns it with set value
  SegmentedItemSettings setReselectable(bool state) {
    _isSelectable = state;
    return this;
  }

  /// Singleton creator
  static SegmentedItemSettings make() {
    return SegmentedItemSettings(0, false);
  }
}

/// Used to define the current selected item
class SegmentedItemSelectorWrapper {
  final SegmentedItem itemSelected;
  final bool isSelected;

  SegmentedItemSelectorWrapper({this.itemSelected, this.isSelected});
}
