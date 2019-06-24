import 'dart:math';

import 'package:flutter/material.dart';

import 'mixins/locator_mixin.dart';
import 'segmented_item_settings.dart';
import 'material_segmented_control.dart';

/// A segmented item.
/// Use this to show a segment inside [MaterialSegmentedControl].
///
/// [colorSelected] is shown if an item is selected and
/// [colorIdle] is the background color for unselected item.
/// These properties have no default value and must be set.
///
/// To execute code on selecting an item, define [onSelected]. Nothing is done if it is [Null]
///
/// A [child] must also be set. But if it is null, a Container is returned.
class SegmentedItem extends StatefulWidget {
  /// Selected color
  final Color colorSelected;

  /// Unselected color
  final Color colorIdle;

  /// The item's content
  final Widget child;

  /// Global identifier making this widget unique
  final Identifier keyGlob =
      Identifier(Random.secure().nextInt(1000).toString());

  SegmentedItem(
      {@required this.colorSelected,
      @required this.colorIdle,
      @required this.child});

  final SegmentedLocatorMixin _state = _SegmentedItemState();

  SegmentedLocatorMixin get find => _state;

  void setKey(String id) {
    keyGlob.ident = id;
  }

  @override
  _SegmentedItemState createState() => _state;
}

class _SegmentedItemState extends State<SegmentedItem>
    with SegmentedLocatorMixin {
  bool _isSelected = false;
  bool _isFirstItem = false;
  bool _isLastItem = false;
  double _borderRadius = 0;
  bool _canSelect = true;
  Color _idleColor, _selectedColor;

  @override
  void initState() {
    super.initState();
  }

  @override
  void didUpdateWidget(SegmentedItem oldWidget) {
    super.didUpdateWidget(oldWidget);

    _isSelected = SegmentedItemSettings.selectedItem.keyGlob.ident ==
        widget.keyGlob.ident;
  }

  @override
  Widget build(BuildContext context) {
    return ClipRRect(
      borderRadius: _getBorderRadius(),
      child: AnimatedContainer(
        duration: Duration(milliseconds: 200),
        color: _isSelected
            ? widget.colorSelected ?? _selectedColor
            : widget.colorIdle ?? _idleColor,
        curve: Curves.easeInCubic,
        child: InkWell(
          splashColor: widget.colorSelected == null
              ? _selectedColor.withOpacity(0.7)
              : widget.colorSelected.withOpacity(0.7),
          highlightColor: widget.colorSelected == null
              ? _selectedColor.withOpacity(0.7)
              : widget.colorSelected.withOpacity(0.25),
          borderRadius: _getBorderRadius(),
          child: Padding(
            padding: const EdgeInsets.all(16.0),
            child: Center(
                child: widget.child == null ? Container() : widget.child),
          ),
          onTap: () {
            if (!_canSelect && _isSelected) return;
            _toggleSelection();
          },
        ),
      ),
    );
  }

  void _toggleSelection() {
    SegmentedItemSettings.selectedItem = widget;

    if (!mounted) return;
    setState(() {
      _isSelected = !_isSelected;
    });
  }

  void listen(Function(int) callback) {
    callback(0);
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

  void _applySettings(SegmentedItemSettings settings) {
    if (settings != null) {
      _borderRadius = settings.borderRadius ?? 0;
      _idleColor = settings.colorIdle ?? widget.colorIdle;
      _selectedColor = settings.colorSelected ?? widget.colorSelected;
    }
  }

  @override
  void setup(SegmentedItemSettings settings) {
    _applySettings(settings);
  }

  _getBorderRadius() {
    return BorderRadius.only(
      topLeft: Radius.circular(_getRadiusFirst()),
      bottomLeft: Radius.circular(_getRadiusFirst()),
      topRight: Radius.circular(_getRadiusLast()),
      bottomRight: Radius.circular(_getRadiusLast()),
    );
  }

  @override
  String toString({DiagnosticLevel minLevel = DiagnosticLevel.debug}) {
    return '$_borderRadius';
  }

  @override
  void setItemPosition(int index, int maxCount) {
    if (index == 0) {
      setFirstItem();
    } else if (index == maxCount - 1) {
      setLastItem();
    }
  }

  @override
  void setInitiallySelected(bool isInitialSelect) {
    _isSelected = isInitialSelect;
  }
}
