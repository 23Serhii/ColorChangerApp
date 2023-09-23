import 'package:flutter/material.dart';
import 'package:flutter_test/flutter_test.dart';

import '../lib/ui/home_page.dart';

void main() {

  test('Background color changes when tapped', () {
    var homePage = HomePage();

    expect(homePage.backgroundColor, Colors.black);

    homePage.changeBackgroundColor(Colors.red);
    expect(homePage.backgroundColor, Colors.red);
  });

  test('Background color changes when text is entered', () {
    var homePage = HomePage();

    expect(homePage.backgroundColor, Colors.black);


    homePage.onTextChanged('Hello');
    expect(homePage.backgroundColor, Colors.green);

    homePage.onTextChanged('Hi');
    expect(homePage.backgroundColor, Colors.blue);
  });

}