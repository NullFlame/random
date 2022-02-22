import 'dart:math';
import 'package:animated_text_kit/animated_text_kit.dart';
import 'package:flutter/material.dart';

void main() {
  runApp(const MaterialApp(home: Main()));
}

// Main extends Statefull widget for color change
class Main extends StatefulWidget {
  // Main key.
  const Main({Key? key}) : super(key: key);
  @override
  _MainState createState() => _MainState();
}

// Color state class
class _MainState extends State<Main> {
  final scaffoldKey = GlobalKey<ScaffoldState>();
  final Random _random = Random();

  Color _color = const Color(0xFFFFFFFF);
// random from dart:math using constructor fromARGB
  void changeColor() {
    setState(() {
      const rgb = 255;
      _color = Color.fromARGB(
        _random.nextInt(rgb),
        _random.nextInt(rgb),
        _random.nextInt(rgb),
        _random.nextInt(rgb),
      );
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      key: scaffoldKey,
      body: InkWell(
        onTap: changeColor,
        child: Container(
          color: _color,
          child: Center(
            child: SizedBox(
              child: TextLiquidFill(
                text: 'Hey There',
                waveColor: Colors.blueAccent,
                boxBackgroundColor: Colors.yellowAccent,
                textStyle: const TextStyle(
                  fontSize: 80.0,
                  color: Colors.black,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
