import 'package:flutter/material.dart';

import 'mixins/locator_mixin.dart';
import 'segmented_item_settings.dart';

typedef SegmentChosen = void Function(bool);

class SegmentedItem extends StatefulWidget {
  final Color colorSelected;
  final Color colorIdle;
  final SegmentChosen onSelected;

  final Widget child;

  SegmentedItem(
      {this.colorSelected, this.colorIdle, this.onSelected, this.child});

  final SegmentedLocatorMixin _state = _SegmentedItemState();

  SegmentedLocatorMixin locate() => _state;

  @override
  _SegmentedItemState createState() => _state;
}

class _SegmentedItemState extends State<SegmentedItem>
    with SegmentedLocatorMixin {
  bool _isSelected = false;
  bool _isFirstItem = false;
  bool _isLastItem = false;
  double _borderRadius = 0;
  SegmentChosen _listener;
  bool _canSelect = true;

  @override
  Widget build(BuildContext context) {
    return FlatButton(
      color: _isSelected ? widget.colorSelected : widget.colorIdle,
      padding: EdgeInsets.zero,
      shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
        topLeft: Radius.circular(_getRadiusFirst()),
        bottomLeft: Radius.circular(_getRadiusFirst()),
        topRight: Radius.circular(_getRadiusLast()),
        bottomRight: Radius.circular(_getRadiusLast()),
      )),
      child: widget.child,
      onPressed: () {
        if (!_canSelect && _isSelected) return;
        _toggleSelection();
        if (widget.onSelected != null) widget.onSelected(_isSelected);
      },
    );
  }

  void _toggleSelection() {
    setState(() {
      _isSelected = !_isSelected;
    });
    _callListener();
  }

  @override
  void setFirstItem() {
    //setState(() {
    _isFirstItem = true;
    _isLastItem = false;
    //});
  }

  @override
  void setLastItem() {
    //setState(() {
    _isFirstItem = false;
    _isLastItem = true;
    //});
  }

  double _getRadiusFirst() {
    return _isFirstItem ? _borderRadius : 0;
  }

  double _getRadiusLast() {
    return _isLastItem ? _borderRadius : 0;
  }

  @override
  void listen(SegmentChosen listener) {
    _listener = listener;
    //_callListener();
  }

  void _applySettings(SegmentedItemSettings settings) {
    if (settings != null) {
      _borderRadius = settings.borderRadius;
      _canSelect = settings.isSelectable;
    }
  }

  void _callListener() {
    if (_listener != null) _listener(_isSelected);
  }

  @override
  void setup(SegmentedItemSettings settings) {
    _applySettings(settings);
  }

  @override
  void setUnselected(bool allow) {
    if (allow)
      setState(() {
        _isSelected = false;
      });
  }
}
