# flutter_polygon_clipper

A Flutter package to create polygon shapes.

Based on the [flutter_polygon_clipper](https://pub.dev/packages/flutter_polygon_clipper) package by [Lutfor Rahman](https://github.com/contactlutforrahman).


## Installation
Add this to your project's pubspec.yaml file:

```yaml
dependencies:
  flutter_polygon: ^0.2.0
```

## Usage

### Clipping

Use the `ClipPolygon` widget to clip a child widget.
``` dart
import 'package:flutter_polygon_clipper/flutter_polygon_clipper.dart';

ClipPolygon(
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

Use the `PolygonBorder` shape with your favorites widgets!
``` dart
import 'package:flutter_polygon_clipper/flutter_polygon_clipper.dart';

ElevatedButton(
  shape: PolygonBorder(
    sides: 6,
    borderRadius: 5.0,                                      // Defaults to 0.0 degrees
    rotate: 30.0,                                           // Defaults to 0.0 degrees
    border: BorderSide(color: Colors.red, width: 2.0),      // Defaults to BorderSide.none
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