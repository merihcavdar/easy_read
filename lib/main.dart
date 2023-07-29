import 'package:flutter/material.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatefulWidget {
  const MyApp({super.key});

  @override
  State<MyApp> createState() => _MyAppState();
}

class _MyAppState extends State<MyApp> {
  double _fontSize = 40;
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        body: SafeArea(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceAround,
            children: [
              Expanded(
                child: TextField(
                  textInputAction: TextInputAction.done,
                  style: TextStyle(
                    fontSize: _fontSize,
                  ),
                  maxLines: null,
                ),
              ),
              Slider(
                  min: 30,
                  max: 200,
                  value: _fontSize,
                  onChanged: (newSize) {
                    setState(() {
                      _fontSize = newSize;
                    });
                  })
            ],
          ),
        ),
      ),
    );
  }
}
