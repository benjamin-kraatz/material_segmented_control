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
    return Container(
      child: Center(
        child: Column(
          children: <Widget>[
            MaterialSegmentedControl(
              children: _children(),
              selectionIndex: _currentSelection,
              borderColor: Colors.grey,
              selectedColor: Colors.redAccent,
              unselectedColor: Colors.white,
              borderRadius: 32.0,
              onSegmentChosen: (index) {
                setState(() {
                  _currentSelection = index;
                });
              },
            ),
            SizedBox(
              height: 8.0,
            ),
            MaterialSegmentedControl.paw(
              children: _children(),
              selectionIndex: _currentSelection,
              borderColor: Colors.grey,
              pawColor: Colors.lightBlue,
              pawElevation: 2.0,
              borderRadius: 32.0,
              onSegmentChosen: (index) {
                setState(() {
                  _currentSelection = index;
                });
              },
            ),
          ],
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
