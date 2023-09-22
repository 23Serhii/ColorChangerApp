import 'package:flutter/material.dart';

 class RandomColor {

  int _seed = 0;

  RandomColor() {
    _initializeSeed();
  }

  void _initializeSeed() {
    _seed = _getTimestamp();
  }

  int _getTimestamp() {
    int microseconds = 0;
    return microseconds;
  }

  int nextInt(int max) {
    _seed = (_seed * 1103515245 + 12345) % 2147483648;
    return (_seed % max);
  }

  Color getColorForText(String text) {
    switch (text) {
      case 'Hello':
        return Colors.black;
      case 'Hi':
        return Colors.blue;
      case 'Hey':
        return Colors.green;
      default:
        return Colors.red;
    }

  }

   Color generate() {
    int r = nextInt(256);
    int g = nextInt(256);
    int b = nextInt(256);

    return Color.fromRGBO(r, g, b, 1);
  }



}