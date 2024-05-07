## 5.0.1

- Bump minimum Dart SDK version to `>=3.0.0 <4.0.0`
- Add `analysis_options.yaml` file and apply linter recommendations

## 5.0.0

- **BREAKING**: Removed `onSegmentChosen`. Use `onSegmentTapped` instead

**_In later versions, this package will require `Dart SDK >=3.0.0 <4.0.0`. Consider upgrading Flutter to at least 3.10.0_**

## 4.2.0

**Deprecated**

- `onSegmentChosen` is deprecated and will be removed in later versions.
  Use **`onSegmentTapped`** instead.

**Other**

- Bump Dart SDK requirement to `>= 2.19.0`

## 4.1.1

- Add support for setting custom `textStyle`s and a `borderWidth` for the entire widget (thanks to **@[chayanforyou](https://github.com/chayanforyou)**)

## 4.0.0

- `Flutter 3` and `Dart 2.17` updates
- Added Material 3 opt-in to the example app

## 3.1.2

- `x.y.z+B` versioning changed to `x.y.z` scheme

## 3.1.1+4

- Fixed some static analysis issues (non-nullable types can never be null)

## 3.1.0+3

- Added `nullsafety` to the project
- **CHANGES:**
  - `selectedColor`, `disabledColor` and `disabledColor` are no longer required and use default values
  - `onSegmentChosen` is no longer required and can be null. This has no effect so that you need to set `disabledChildren` in case you want disabled children (means the "ripple" effect on tap still exists)
  - Example project now uses `ElevatedButton` instead of deprecated `RaisedButton`
- **FIX:**
  - `??` is no longer used on non-nullable values

## 2.1.1+1

- Changed an insecure URL in the README.md to an https URL that links to the pub.dev page of this package.
- Fixed a wrong placed file in the `example` project
- Added `publish_to` to the example project's `pubspec.yaml` file.

## 2.1.0+1

Extended README.md to explain key features and referenced the example project.

## 2.1.0

Massively improved `example` project. The following features were introduced there to showcase this package:

- "Toggle Disabled" button: shows the use of disabled children
- "Un-select all" button: Lets you clear the selection of all children

## 2.0.11+1

- Children can now have a length of 1

## [2.0.11]

- Fixed `example/main.dart` issue #11 - added `Scaffold` on top of the tree

## [2.0.10]

- Removed deprecated `author` field from pubspec.yaml

## [2.0.9] - Disabled feature

- Disabled feature is now stable. Set children to be disabled with `disabledChildren`.

## [2.0.8] - Disabled feature added

- Fixed issue #9 - You can now set a list of disabled children
- Disabled color defaults to Colors.grey (index 300).

## [2.0.7] - README.md: removed InkWell TODO

## [2.0.6] - More customization

- Related to issue #4 you can now customize your widget in a better way.
- Set the verticalOffset that controls the padding of a child.

## [2.0.5] - Fix: Issue #7 and InkWell ripple

- Fixed issue #7 - MSC is now usable inside a CupertinoApp.
- InkWell ripple effect added; the Material styled ripple effect is seen on (long) tapping a segment. That makes the widget feel more like Material.

## [2.0.4] - Fix: Issue #6

- Fixed bug #6 - not setting selectedColor and unselectedColor causes the library to crash.

## [2.0.3] - Updated `pubspec.yaml`

## [2.0.2] - Minor fixes

## [2.0.1] - MSC v2!

- **Maybe breaking version**

- Completely new approach behind the scenes
- New coloring options
- More customization
- Define one single listener to get selected state
- Removed issues
- Better documentation on how to use
- Works with every widget directly, no need to use a special class `SegmentedItem`

## [1.2.0] - Colors can now be set in MaterialSegmentedControl

- Define colors in MSC widget generally, you do not need to specify the colors for each item separately.

## [1.1.3] - Fixed initial selection

## [1.1.2] - Initial selection

- Set initially selected item.

## [1.1.1] - Minor fixes

- Optical improvements

## [1.1.0] - Fixed major bug where you can select multiple items

## [1.0.2] - Edited example readme

## [1.0.1] - Minor fixes on readme

## [1.0.0] - Added a list of children

- Updated to Dart SDK version 2.2.2 !
- Provide the segmented control a list of children instead only left and right
- Define selection callback for each item itself
- Set colors for each item

## [0.2.1] - Minor fixes

## [0.2.0] - Customization of vertical divider

- Customize color
- Set width

## [0.1.6] - Completed/fixed example directory

## [0.1.5] - Added example directory

## [0.1.4] - Minor fixes in pubspec.yaml

## [0.1.3] - License added.

- Licensing info is under `LICENSE`

## [0.1.2] - Edited Readme and pubspec info

## [0.1.1] - 21.05.2019

- Initial release.
