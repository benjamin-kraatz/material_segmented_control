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
    return MaterialApp(
      home: Scaffold(
        body: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            crossAxisAlignment: CrossAxisAlignment.center,
            children: [
              MaterialSegmentedControl(
                children: _children,
                selectionIndex: _currentSelection,
                borderColor: Colors.grey,
                selectedColor: Colors.redAccent,
                unselectedColor: Colors.white,
                borderRadius: 8.0,
                disabledChildren: [
                  3,
                ],
                onSegmentChosen: (index) {
                  setState(() {
                    _currentSelection = index;
                  });
                },
              ),
              SizedBox(
                height: 8,
              ),
              RaisedButton(
                child: Text('Un-select all'),
                color: Colors.blue,
                textColor: Colors.white,
                onPressed: () => setState(() => _currentSelection = null),
              ),
            ],
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
