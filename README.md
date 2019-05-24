# Material Segmented Control

A material segmented control like the one for iOS, in Material style

![alt text](https://github.com/beagle-barks/material_segmented_control/blob/master/images/msc_100.jpg "Preview")

To see TODOs, upcoming features and known issues, see "In the future" section


*For important notes and TODOs, see TODO section below!*


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
    material_segmented_control: ^1.0.0
```


### Import code

Wherever you want to use this widget, import

```dart
import 'package:material_segmented_control/material_segmented_control.dart';
```


### Basic usage

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
                    print('Hello, it's rome - ${state ? '' : 'un'}selected');
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

<<<<<<< HEAD
### TODO

I'm currently implementing that you do not only have two (left right) widgets, but a list of children. Check it out on *v-1-0-x* branch until it's ready for master.
=======
It is then ready to use

## In the future

### TODO

a) If you don't want do define a selection and idle color for each item but general colors, set them in MSC (almost done, friends!)

b) Provide a vertical divider between each item

c) Animate color changes (almost done, friends!)

### Known issues

-> Pixel overflow when the width of the whole control is larger than screen size. [WIP, see branch *multi-overflow-fix* for progress]
>>>>>>> v1-0-x
