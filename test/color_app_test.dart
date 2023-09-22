import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../lib/ui/home_page.dart';

void main() {

  test('Background color changes when tapped', () {
    var homePage = HomePage();

    // Initial color
    expect(homePage.backgroundColor, Colors.black);

    // Tap to change color
    homePage.changeBackgroundColor(Colors.red);
    expect(homePage.backgroundColor, Colors.red);
  });

  test('Background color changes when text is entered', () {
    var homePage = HomePage();

    // Default text
    expect(homePage.backgroundColor, Colors.black);

    // Enter text
    homePage.onTextChanged('Hello');
    expect(homePage.backgroundColor, Colors.green);

    homePage.onTextChanged('Hi');
    expect(homePage.backgroundColor, Colors.blue);
  });

}