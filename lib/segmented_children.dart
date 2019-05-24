import 'package:flutter/material.dart';

import 'mixins/locator_mixin.dart';

typedef SegmentChosen = void Function();

class SegmentedItem extends StatefulWidget {
  final Color colorSelected;
  final Color colorIdle;
  final SegmentChosen onSelected;

  /// BorderRadius if it is the first or last item
  final double borderRadius;
  final Widget child;

  SegmentedItem(
      {this.colorSelected,
      this.colorIdle,
      this.onSelected,
      this.child,
      this.borderRadius = 0});

  final SegmentedLocatorMixin _state = _SegmentedItemState();

  SegmentedLocatorMixin locate() => _state;

  @override
  _SegmentedItemState createState() => _state;
}

class _SegmentedItemState extends State<SegmentedItem>
    with SegmentedLocatorMixin {
  bool isSelected = false;
  bool isFirstItem = false;
  bool isLastItem = false;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: isSelected ? widget.colorSelected : widget.colorIdle,
      padding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(widget.borderRadius),
        bottomLeft: Radius.circular(widget.borderRadius),
      )),
      child: widget.child,
      onPressed: () {
        toggleSelection();
      },
    );
  }

  void toggleSelection() {
    setState(() {
      isSelected = !isSelected;
    });
  }

  @override
  void setFirstItem() {
    setState(() {
      isFirstItem = true;
      isLastItem = false;
    });
  }

  @override
  void setLastItem() {
    setState(() {
      isFirstItem = false;
      isLastItem = true;
    });
  }
}
