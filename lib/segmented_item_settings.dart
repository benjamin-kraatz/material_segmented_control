import 'segmented_children.dart';

class SegmentedItemSettings {
  double _borderRadius;
  bool _isSelectable;

  SegmentedItemSettings(this._borderRadius, this._isSelectable);

  double get borderRadius => _borderRadius;
  bool get isSelectable => _isSelectable;

  SegmentedItemSettings setBorderRadius(double radius) {
    _borderRadius = radius;
    return this;
  }

  SegmentedItemSettings setReselectable(bool state) {
    _isSelectable = state;
    return this;
  }

  static SegmentedItemSettings make() {
    return SegmentedItemSettings(0, false);
  }
}

class SegmentedItemSelectorWrapper {
  final SegmentedItem itemSelected;
  final bool isSelected;

  SegmentedItemSelectorWrapper({this.itemSelected, this.isSelected});
}
