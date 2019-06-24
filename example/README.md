# Example

This example shows how to use this widget in your project.

## Code

### Basic implementation
```dart
int _currentSelection = 0;

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
         )

Map<int, Widget> _children() => {
  0: Text('Hummingbird'),
  1: Text('Kiwi'),
  2: Text('Rio'),
  3: Text('Telluraves')
};
```