import 'package:flutter/material.dart';

class TextPicker extends StatefulWidget {
  final Function(String) onTextChanged;

  TextPicker({required this.onTextChanged});

  @override
  _TextPickerState createState() => _TextPickerState();
}

class _TextPickerState extends State<TextPicker> {
  String selectedText = "Hello";

  @override
  Widget build(BuildContext context) {
    return DropdownButton(
      value: selectedText,
      onChanged: (value) {
        setState(() {
          selectedText = value!;
          widget.onTextChanged(value);
        });
      },
      items: <String>['Hello', 'Hi', 'Hey'].map((text) {
        return DropdownMenuItem(
          value: text,
          child: Text(text, style: TextStyle(color: Colors.deepPurple, fontWeight: FontWeight.bold),
          ),
        );
      }).toList(),
    );
  }
}