import 'package:flutter/material.dart';
import 'package:material_segmented_control/material_segmented_control.dart';

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
    return Scaffold(
      body: Container(
        child: Center(
          child: MaterialSegmentedControl(
            children: _children,
            selectionIndex: _currentSelection,
            borderColor: Colors.grey,
            selectedColor: Colors.redAccent,
            unselectedColor: Colors.white,
            borderRadius: 24.0,
            disabledChildren: [
              3,
            ],
            onSegmentChosen: (index) {
              setState(() {
                _currentSelection = index;
              });
            },
          ),
        ),
      ),
    );
  }

  Map<int, Widget> _children = {
    0: Text('Hummingbird'),
    1: Text('Kiwi'),
    2: Text('Rio'),
    3: Text('Telluraves')
  };
}
