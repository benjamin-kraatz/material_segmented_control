# Material Segmented Control

A material segmented control like the one for iOS, in Material style.

![image](https://github.com/beagle-barks/material_segmented_control/blob/master/images/msc_110.jpg "Preview")

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
    material_segmented_control: ^1.2.0
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
              initialSelection: 0,
              colorIdle: Colors.white,
              colorSelected: Colors.blueAccent,
              children: <SegmentedItem>[
                SegmentedItem(
                  colorSelected: Colors.blueAccent,// --> not necessary if defined in parent widget!
                  colorIdle: Colors.white, // --> not necessary if defined in parent widget!
                  child: Text('Rome'),
                  onSelected: (state) {
                    print("Hello, it's rome - ${state ? '' : 'un'}selected");
                  },
                ),
                SegmentedItem(
                  colorSelected: Colors.blueAccent,
                  colorIdle: Colors.white,
                  child: Text('New York'),
                ),
                SegmentedItem(
                  colorSelected: Colors.blueAccent,
                  colorIdle: Colors.white,
                  child: Text('Washington'),
                ),
                SegmentedItem(
                  colorSelected: Colors.blueAccent,
                  colorIdle: Colors.white,
                  child: Text('Berlin'),
                ),
              ],
            );
```


## In the future

### TODOs

a) Provide a vertical divider between each item

### Known issues

> -> Pixel overflow when the width of the whole control is larger than screen size. (WIP, see branch **[multi-overflow-fix](https://github.com/beagle-barks/material_segmented_control/tree/multi-overflow-fix)** for progress


### Documentation

Open [the wiki](https://github.com/beagle-barks/material_segmented_control/wiki) to see the documentation
