library material_segmented_control;

import 'package:flutter/material.dart';

enum SegmentDirection {

  Left,
  Right,
  Center,
  None
}

typedef SegmentChosen = void Function(SegmentDirection direction);

/// Use this class to get a segmented control widget with the look
/// and feel of Material design.
class MaterialSegmentedControl extends StatefulWidget {

  /// The left widget
  final Widget leftWidget;

  /// The right widget
  final Widget rightWidget;

  /// Callback method when a segment was tapped/clicked
  final SegmentChosen onSelected;

  /// The initial height of the widget
  final double height;

  /// Border radius for the whole widget
  final double borderRadius;

  /// Selected segment background color
  final Color colorSelected;

  /// Unselected segment background color
  final Color colorUnselected;

  /// If a selected segment can be reselected
  final bool reselectable;

  MaterialSegmentedControl(
      {this.leftWidget,
        this.rightWidget,
        this.onSelected,
        this.reselectable = false,
        this.colorSelected = Colors.blueAccent,
        this.colorUnselected = Colors.black54,
        this.height = 44.0,
        this.borderRadius = 32.0});

  @override
  _MaterialSegmentedControlState createState() =>
      _MaterialSegmentedControlState();
}

class _MaterialSegmentedControlState extends State<MaterialSegmentedControl> {
  SegmentDirection currentDirectionSelected = SegmentDirection.Center;

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
          FlatButton(
            color: currentDirectionSelected == SegmentDirection.Left
                ? widget.colorSelected
                : widget.colorUnselected,
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(widget.borderRadius),
                  bottomLeft: Radius.circular(widget.borderRadius),
                )),
            child: widget.leftWidget,
            onPressed: () {
              if (currentDirectionSelected != SegmentDirection.Left ||
                  currentDirectionSelected == SegmentDirection.Left &&
                      widget.reselectable) {
                _selectDirection(SegmentDirection.Left);
                widget.onSelected(SegmentDirection.Left);
              }
            },
          ),
          VerticalDivider(
            width: 2.0,
          ),
          FlatButton(
            color: currentDirectionSelected == SegmentDirection.Right
                ? widget.colorSelected
                : widget.colorUnselected,
            padding: EdgeInsets.zero,
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.only(
                  bottomRight: Radius.circular(widget.borderRadius),
                  topRight: Radius.circular(widget.borderRadius),
                )),
            child: widget.rightWidget,
            onPressed: () {
              if (currentDirectionSelected != SegmentDirection.Right ||
                  currentDirectionSelected == SegmentDirection.Right &&
                      widget.reselectable) {
                _selectDirection(SegmentDirection.Right);
                widget.onSelected(SegmentDirection.Right);
              }
            },
          )
        ],
      ),
    );
  }

  void _selectDirection(SegmentDirection direction) {
    setState(() {
      currentDirectionSelected = direction;
    });
  }
}
