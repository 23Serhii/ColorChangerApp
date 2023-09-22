import 'package:flutter/material.dart';
import '../utils/random_color.dart';
import '../utils/text_picker.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  get backgroundColor => null;

  @override
  _HomePageState createState() => _HomePageState();

  void changeBackgroundColor(MaterialColor red) {}

  void onTextChanged(String s) {}
}

class _HomePageState extends State<HomePage> {

  late Color _backgroundColor;
  final RandomColor _randomColor = RandomColor();
  final RandomColor _getColorForText = RandomColor();

  @override
  void initState() {
    super.initState();
    _backgroundColor = Colors.black;
  }

  void _changeBackgroundColor(Color color) {
    setState(() {
      _backgroundColor = color;
      },
    );
  }


  @override
  Widget build(BuildContext context) {

    return GestureDetector(
      onTap: () {
        _changeBackgroundColor(_randomColor.generate());
      },
      child: Container(
        color: _backgroundColor,
        child: Center(
          child: TextPicker(
            onTextChanged: (selectedText) {
              _changeBackgroundColor(_getColorForText.getColorForText(selectedText));
            },
          ),
        ),
      ),
    );
  }



}
