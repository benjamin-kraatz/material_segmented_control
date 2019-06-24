import 'package:flutter/material.dart';
import 'package:material_segmented_control/material_segmented_control.dart';
import 'package:material_segmented_control/segmented_children.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  _MyAppState createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  int _currentSelection = 0;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Center(
        child: MaterialSegmentedControl(
          children: _children(),
          selectionIndex: _currentSelection,
          borderColor: Colors.grey,
          selectedColor: Colors.redAccent,
          unselectedColor: Colors.white,
          borderRadius: 32.0,
          onValueChanged: (index) {
            setState(() {
              _currentSelection = index;
            });
          },
        ),
      ),
    );
  }

  Map<int, Widget> _children() => {
        0: Text('Hummingbird'),
        1: Text('Kiwi'),
        2: Text('Rio'),
        3: Text('Telluraves')
      };
}
