# Example

This example shows how to use this widget in your project.

## Code

### With text
```dart
MaterialSegmentedControl(
              reselectable: false,
              borderRadius: 32.0,
              children: <SegmentedItem>[
                SegmentedItem(
                  colorSelected: Colors.blueAccent,
                  colorIdle: Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Text('Rome'),
                  ),
                  onSelected: (state) {
                    print("Hello, it's rome - ${state ? '' : 'un'}selected");
                  },
                ),
                SegmentedItem(
                  colorSelected: Colors.blueAccent,
                  colorIdle: Colors.transparent,
                  child: Text('New York'),
                ),
                SegmentedItem(
                  colorSelected: Colors.blueAccent,
                  colorIdle: Colors.transparent,
                  child: Text('Washington'),
                ),
                SegmentedItem(
                  colorSelected: Colors.blueAccent,
                  colorIdle: Colors.transparent,
                  child: Text('Berlin'),
                ),
              ],
            );
```

### With icons
```dart
MaterialSegmentedControl(
              reselectable: false,
              borderRadius: 32.0,
              children: <SegmentedItem>[
                SegmentedItem(
                  colorSelected: Colors.blueAccent,
                  colorIdle: Colors.transparent,
                  child: Padding(
                    padding: const EdgeInsets.all(8.0),
                    child: Icon(Icons.camera_front, color: Colors.black),
                  ),
                  onSelected: (state) {
                    print("Hello, it's rome - ${state ? '' : 'un'}selected");
                  },
                ),
                SegmentedItem(
                  colorSelected: Colors.blueAccent,
                  colorIdle: Colors.transparent,
                    child: Icon(Icons.camera_rear, color: Colors.black),
                ),
                SegmentedItem(
                  colorSelected: Colors.blueAccent,
                  colorIdle: Colors.transparent,
                    child: Icon(Icons.remove, color: Colors.black),
                ),
                SegmentedItem(
                  colorSelected: Colors.blueAccent,
                  colorIdle: Colors.transparent,
                    child: Icon(Icons.wb_sunny, color: Colors.black),
                ),
              ],
            );
```