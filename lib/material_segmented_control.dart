library material_segmented_control;

import 'package:flutter/material.dart';

import 'segmented_children.dart';
import 'segmented_item_settings.dart';

/// Callback function when an item is selected and its state
typedef SegmentChosen = void Function(int);

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

  /// Used for unselected state for children if they have no color specified
  final Color colorIdle;

  /// Used for selected state for children if they have no color specified
  final Color colorSelected;

  /// Listener called as an item gets selected
  final SegmentChosen onSelected;

  MaterialSegmentedControl(
      {this.children,
      this.colorIdle,
      this.colorSelected,
      this.onSelected,
      this.dividerWidth = 1.0,
      this.dividerColor = Colors.white,
      this.borderRadius = 32.0,
      this.initialSelection = 0})
      : assert(children != null, 'You must provide children!'),
        assert(onSelected != null, 'You must provide a selection listener');

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
          /*..forEach(
            (el) => el
              ..setKey(widget.children.indexOf(el).toString())
              ..find.setItemPosition(
                  widget.children.indexOf(el), widget.children.length)
              ..find.setInitiallySelected(
                  widget.children.indexOf(el) == widget.initialSelection &&
                      widget.initialSelection != -1 &&
                      widget.initialSelection != null)
              ..find.setup(
                SegmentedItemSettings(
                  borderRadius: widget.borderRadius,
                  colorIdle: widget.colorIdle,
                  colorSelected: widget.colorSelected,
                ),
              ),*/
          ),
    );
  }
}
