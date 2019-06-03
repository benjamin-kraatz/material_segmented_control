import 'package:flutter/material.dart';

import 'segmented_children.dart';

/// Holds information to set up a [SegmentedItem]
class SegmentedItemSettings {
  /// The current selected item
  static SegmentedItem selectedItem =
      SegmentedItem(colorSelected: null, colorIdle: null, child: null);

  double borderRadius;

  Color colorIdle;
  Color colorSelected;

  /// Define a border radius with [_borderRadius]
  SegmentedItemSettings(
      {this.borderRadius, this.colorIdle, this.colorSelected});
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
