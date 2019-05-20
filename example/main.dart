import 'package:flutter/material.dart';
import 'package:material_segmented_control/material_segmented_control.dart';

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
