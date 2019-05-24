library material_segmented_control;

import 'package:flutter/material.dart';

import 'segmented_children.dart';
import 'segmented_item_settings.dart';

@Deprecated(
    'This is replaced by the list of children. It has no effect and will be removed on later versions.')
enum SegmentDirection { Left, Right, Center, None }

@Deprecated(
    "Has no effect. Is replaced by the child's listener. Will be removed on later versions")
typedef SegmentChosen = void Function(SegmentDirection direction);

/// Use this class to get a segmented control widget with the look
/// and feel of Material design.
class MaterialSegmentedControl extends StatefulWidget {
  /// The left widget
  @Deprecated('This is replaced by a list of children')
  final Widget leftWidget;

  /// The right widget
  @Deprecated('This is replaced by a list of children')
  final Widget rightWidget;

  /// Callback method when a segment was tapped/clicked
  final SegmentChosen onSelected;

  /// The initial height of the widget
  final double height;

  /// Border radius for the whole widget
  final double borderRadius;

  /// Width of the centered divider
  final double dividerWidth;

  /// Color of the centered divider
  final Color dividerColor;

  /// Selected segment background color
  @Deprecated(
      "Replaced by child's value and will be removed with later versions")
  final Color colorSelected;

  /// Unselected segment background color
  @Deprecated(
      "Replaced by child's value and will be removed with later versions")
  final Color colorUnselected;

  /// If a selected segment can be reselected
  final bool reselectable;

  /// All the children inside. Left and right widget get rounded edges if [borderRadius] > 0
  final List<SegmentedItem> children;

  MaterialSegmentedControl(
      {@Deprecated('This is replaced by a list of children. Use children<SegmentedItems>[] instead!')
          this.leftWidget,
      @Deprecated('This is replaced by a list of children. Use children<SegmentedItems>[] instead!')
          this.rightWidget,
      @Deprecated('This has no effect and will be removed in future versions')
          this.onSelected,
      this.children,
      this.reselectable = false,
      @Deprecated("Replaced by child's value and will be removed")
          this.colorSelected = Colors.blueAccent,
      @Deprecated("Replaced by child's value and will be removed")
          this.colorUnselected = Colors.black54,
      this.height = 44.0,
      this.dividerWidth = 1.0,
      this.dividerColor = Colors.white,
      this.borderRadius = 32.0});

  @override
  _MaterialSegmentedControlState createState() =>
      _MaterialSegmentedControlState();
}

class _MaterialSegmentedControlState extends State<MaterialSegmentedControl> {
  SegmentDirection currentDirectionSelected = SegmentDirection.Center;

  SegmentedItemSelectorWrapper _currentSelectedWidget =
      SegmentedItemSelectorWrapper();
  @override
  Widget build(BuildContext context) {
    return Container(
      height: widget.height,
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
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: <Widget>[
          for (int i = 0; i < widget.children.length; i++)
            if (i == widget.children.length - 1)
              widget.children[i]
                ..locate().setup(SegmentedItemSettings(
                    widget.borderRadius, _determineReSelectable(i)))
                ..locate().setLastItem()
                ..locate().listen((state) {
                  _apply(state, i);
                })
            else
              if (i == 0)
                widget.children[0]
                  ..locate().setup(SegmentedItemSettings(
                      widget.borderRadius, _determineReSelectable(i)))
                  ..locate().setFirstItem()
                  ..locate().listen((state) {
                    _apply(state, i);
                  })
              else
                widget.children[i]
                  ..locate().setup(SegmentedItemSettings(
                      widget.borderRadius, _determineReSelectable(i)))
                  ..locate().listen((state) {
                    _apply(state, i);
                  }),
        ],
      ),
    );
  }

  @Deprecated(
      "This is replaced by children and will be removed in later versions")
  void _selectDirection(SegmentDirection direction) {
    setState(() {
      currentDirectionSelected = direction;
    });
  }

  void _apply(bool state, int index) {
    _currentSelectedWidget = SegmentedItemSelectorWrapper(
        itemSelected: widget.children[index], isSelected: state);
    _determineSelection();
    setState(() {});
  }

  bool _determineReSelectable(int index) {
    return (widget.reselectable &&
        _currentSelectedWidget.itemSelected == widget.children[index]);
  }

  _determineSelection() {
    for (SegmentedItem s in widget.children) {
      if (s != _currentSelectedWidget.itemSelected) {
        s.locate()..setUnselected(true);
      }
    }
  }
}
