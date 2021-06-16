# flutter_polygon_clipper

A Flutter package to create polygon shapes. From now on, you can create polygon shapes for you android and iOS app using Flutter & Flutter Polygon Cliper.

## Installation
Add this to your project's pubspec.yaml file:

```yaml
dependencies:
  flutter_polygon_clipper: ^1.0.0
```

## Usage

### Clipping

Use the `FlutterClipPolygon` widget to clip a child widget.
``` dart
import 'package:flutter_polygon_clipper/flutter_polygon_clipper.dart';

FlutterClipPolygon(
 sides: 6,
 borderRadius: 5.0,     // Defaults to 0.0 degrees
 rotate: 90.0,          // Defaults to 0.0 degrees
 boxShadows: [
  PolygonBoxShadow(color: Colors.black, elevation: 1.0),
  PolygonBoxShadow(color: Colors.grey, elevation: 5.0)
 ],
 child: Container(color: Colors.black),
);
```

### Borders

Use the `FlutterClipPolygon` shape with your favorites widgets!
``` dart
import 'package:flutter_polygon_clipper/flutter_polygon_clipper.dart';

ElevatedButton(
  shape: FlutterClipPolygon(
    sides: 6,
    borderRadius: 5.0,                                      // Defaults to 0.0 degrees
    rotate: 30.0,                                           // Defaults to 0.0 degrees
    side: BorderSide(color: Colors.red, width: 2.0),      // Defaults to BorderSide.none
  ),
  onPressed: () {},
  child: Icon(Icons.star),
),
```

Other widgets:

* `TextButton`,
* `Container`,
* `Chip`
* ...