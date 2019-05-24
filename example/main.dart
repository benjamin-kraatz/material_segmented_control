import 'package:flutter/material.dart';
import 'package:material_segmented_control/material_segmented_control.dart';
import 'package:material_segmented_control/segmented_children.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: MaterialSegmentedControl(
            borderRadius: 32.0,
            reselectable: false,
            colorSelected: Colors.blueAccent,
            colorUnselected: Colors.white,
            children: <SegmentedItem>[
              SegmentedItem(
                colorSelected: Colors.blueGrey,
                colorIdle: Colors.transparent,
                child: Icon(Icons.camera_rear, color: Colors.black),
              ),
              SegmentedItem(
                colorSelected: Colors.blueGrey,
                colorIdle: Colors.transparent,
                child: Icon(Icons.wb_sunny, color: Colors.black),
              ),
              SegmentedItem(
                colorSelected: Colors.blueGrey,
                colorIdle: Colors.transparent,
                child: Icon(Icons.description, color: Colors.black),
              ),
              SegmentedItem(
                colorSelected: Colors.blueGrey,
                colorIdle: Colors.transparent,
                child: Icon(Icons.camera_front, color: Colors.black),
              ),
            ],
            leftWidget: Icon(Icons.camera_rear, color: Colors.black),
            rightWidget: Icon(Icons.camera_front, color: Colors.black),
            onSelected: (direction) {
              switch (direction) {
                case SegmentDirection.Left:
                  print("clicked left icon");
                  break;
                case SegmentDirection.Center:
                  print("clicked center icon");
                  break;
                case SegmentDirection.Right:
                  print("clicked right icon");
                  break;
                case SegmentDirection.None:
                  print("clicked none icon");
                  break;
              }
            }),
      ),
    );
  }
}
