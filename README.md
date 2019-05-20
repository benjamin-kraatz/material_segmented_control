# Material Segmented Control

A material segmented control like the one for iOS, in Material style

## Why?

We all know well the Cupertino segmented widget in [Flutter](https://flutter.dev).
But there is no similar in Material, so I decided to publish it.

You can check it out on pub:
([see package on dartlang](http://pub.dartlang.org/packages/material_segmented_control))


## How to use


### Import the package

In your pubspec.yaml, add

```dart
dependencies: 
    material_segmented_control: ^0.1.1
```


### Import code

Wherever you want to use this widget, import

```dart
import 'package:material_segmented_control/material_segmented_control.dart';
```


### Basic usage

```dart
MaterialSegmentedControl(
        borderRadius: 32.0,
        reselectable: false,
        colorSelected: Colors.blueAccent,
        colorUnselected: Colors.white,
        leftWidget: Icon(Icons.camera_rear, color: Colors.black),
        rightWidget: Icon(Icons.camera_front, color: Colors.black),
        onSelected: (direction) {
          switch(direction)
          {
            // ...
          }
        })
```
