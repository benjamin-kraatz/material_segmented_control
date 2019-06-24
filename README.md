# Material Segmented Control

A material segmented control like the one for iOS, in Material style.

Now available in **version 2**!

![image](https://github.com/beagle-barks/material_segmented_control/blob/v2-0-x/images/20190624_235551.jpg "Preview")

To see TODOs, upcoming features and known issues, got to **[In the future section](https://github.com/beagle-barks/material_segmented_control#in-the-future)**


## Why?

We all know well the Cupertino segmented widget in [Flutter](https://flutter.dev).
But there is no similar in Material, so I thought, why not to create one.

You can check it out on pub:
([see package on pub.dev](http://pub.dartlang.org/packages/material_segmented_control))


## How to use


### Import the package

In your `pubspec.yaml`, add

```dart
dependencies: 
    material_segmented_control: ^2.0.1
```


### Import code

Wherever you want to use this widget, import

```dart
import 'package:material_segmented_control/material_segmented_control.dart';
```


### Basic usage

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


## In the future

### TODOs

<<<<<<< HEAD
* Provide a vertical divider between each item
* Little tooltip on long press showing a bite more detail for a segment
=======
* InkWell/Ripple effect
* Tooltip showing a bit more details for a segment
>>>>>>> v2-0-x

### Known issues

> Currently there are no known issues. Yey!


### Documentation

Open [the wiki](https://github.com/beagle-barks/material_segmented_control/wiki) to see the documentation


## Behind the scenes

> **Thanks to Flutter, making this project successful!**
