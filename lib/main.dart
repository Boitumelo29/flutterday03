import 'package:flutter/material.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _fontSize = 40;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SingleChildScrollView(
          child: Center(
              child: Padding(
            padding: const EdgeInsets.only(top: 20),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                TextField(
                  style: TextStyle(fontSize: _fontSize),
                  maxLines: null,
                  textInputAction: TextInputAction.done,
                ),
                Slider(
                    min: 30,
                    max: 300,
                    value: _fontSize,
                    onChanged: (newSize) {
                      setState(() {
                        _fontSize = newSize;
                      });
                    })
              ],
            ),
          )),
        ),
      ),
    );
  }
}
