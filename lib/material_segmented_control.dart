library material_segmented_control;

import 'package:flutter/material.dart';

import 'segmented_children.dart';
import 'segmented_item_settings.dart';

/// Use this class to get a segmented control widget with the look
/// and feel of Material design.
class MaterialSegmentedControl extends StatefulWidget {
  /// Border radius for the whole widget
  final double borderRadius;

  /// Width of the centered divider
  final double dividerWidth;

  /// Color of the centered divider
  final Color dividerColor;

  /// All the children inside. Left and right widget get rounded edges if [borderRadius] > 0
  final List<SegmentedItem> children;

  /// Marks the child as active initially (null-based index)
  final int initialSelection;

  MaterialSegmentedControl(
      {this.children,
      this.dividerWidth = 1.0,
      this.dividerColor = Colors.white,
      this.borderRadius = 32.0,
      this.initialSelection = 0});

  @override
  _MaterialSegmentedControlState createState() =>
      _MaterialSegmentedControlState();
}

class _MaterialSegmentedControlState extends State<MaterialSegmentedControl> {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: MediaQuery.of(context)
          .removePadding(
              removeTop: true,
              removeBottom: true,
              removeRight: true,
              removeLeft: true)
          .padding,
      decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(widget.borderRadius),
          border: Border.all(color: Colors.grey, width: 0.5)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        crossAxisAlignment: CrossAxisAlignment.start,
        children: widget.children
          ..forEach((el) => el
            ..setKey(widget.children.indexOf(el).toString())
            ..find.setItemPosition(
                widget.children.indexOf(el), widget.children.length)
            ..find.setInitiallySelected(
                widget.children.indexOf(el) == widget.initialSelection)
            ..find.setup(SegmentedItemSettings(widget.borderRadius))),
      ),
    );
  }
}
