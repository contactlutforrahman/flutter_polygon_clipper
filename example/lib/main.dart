import 'package:flutter/material.dart';
import 'package:flutter_polygon_clipper/flutter_polygon_clipper.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Polygon Clipper',
      theme: ThemeData(

        primarySwatch: Colors.blue,
      ),
      home: MyHomePage(title: 'Flutter Polygon Clipper'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: Column(

          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            Container(
              height: 150,
              width: 150,
              child: FlutterClipPolygon(
                sides: 12,
                borderRadius: 5.0, // Defaults to 0.0 degrees
                rotate: 90.0, // Defaults to 0.0 degrees
                boxShadows: [
                  PolygonBoxShadow(color: Colors.red, elevation: 1.0),
                  PolygonBoxShadow(color: Colors.grey, elevation: 5.0)
                ],

                child: Container(color: Colors.green),
              ),
            ),
            Container(
              height: 100,
              width: 100,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  shape: FlutterPolygonBorder(
                    sides: 3,
                    borderRadius: 5.0, // Defaults to 0.0 degrees
                    rotate: 30.0, // Defaults to 0.0 degrees
                    side: BorderSide(
                        color: Colors.red,
                        width: 2.0), // Defaults to BorderSide.none
                  ),
                ),
                onPressed: () {},
                child: Icon(Icons.star),
              ),
            ),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        shape: FlutterPolygonBorder(
          sides: 6,
          borderRadius: 5.0, // Defaults to 0.0 degrees
          rotate: 30.0, // Defaults to 0.0 degrees
          side: BorderSide(
              color: Colors.red, width: 2.0), // Defaults to BorderSide.none
        ),
        onPressed: () {},
        child: Icon(Icons.star),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}
