import 'dart:math';

import 'package:flutter/material.dart';

/// A screen widget that displays content with a background color.
class ColoredScreen extends StatefulWidget {
  /// A unique route name for this screen.
  static const String routeName = "colorScreen";

  /// Creates a [ColoredScreen] widget instance.
  ///
  /// [key] is an optional [Key] that is used to identify this widget.
  const ColoredScreen({Key? key}) : super(key: key);

  @override
  _ColoredScreenState createState() => _ColoredScreenState();
}

class _ColoredScreenState extends State<ColoredScreen> {
  final Random _random = Random();
  final int randomGenerator = 256;
  final double comparingNumber = 0.5;
  final double textSize = 34;

  Color _backgroundColor = Colors.black;
  Color _textColor = Colors.white;

  /// Changes the background color to a random color and the text color
  /// based on the luminance of the new background color.
  void _changeBackgroundColor() {
    setState(() {
      _backgroundColor = Color.fromRGBO(
        _random.nextInt(randomGenerator),
        _random.nextInt(randomGenerator),
        _random.nextInt(randomGenerator),
        1,
      );

      _textColor = _backgroundColor.computeLuminance() > comparingNumber
          ? Colors.black
          : Colors.white;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: InkWell(
        onTap: _changeBackgroundColor,
        child: ColoredBox(
          color: _backgroundColor,
          child: Center(
            child: Text(
              'Hello there',
              style: TextStyle(
                fontStyle: FontStyle.italic,
                color: _textColor,
                fontSize: textSize,
                fontWeight: FontWeight.bold,
              ),
            ),
          ),
        ),
      ),
    );
  }
}
