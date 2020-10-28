import 'package:flutter/material.dart';
import 'package:o_color_picker/o_color_picker.dart';

class ColorPicker extends StatefulWidget {
  String title;
  void Function(Color) callback;
  ColorPicker(this.title, this.callback);
  @override
  _ColorPicker createState() => _ColorPicker();
}

class _ColorPicker extends State<ColorPicker> {

  Color selectedColor = Colors.cyan;
  @override
  Widget build(BuildContext context) {
    return FlatButton(
              color: selectedColor,
              textColor: Colors.black,
              child: Text(widget.title),
              onPressed: () => showDialog<void>(
                context: context,
                builder: (_) => Material(
                  child: OColorPicker(
                    selectedColor: selectedColor,
                    colors: primaryColorsPalette,
                    onColorChange: (color) {
                      setState(() {
                        selectedColor = color;
                      });
                      Navigator.of(context).pop();
                      widget.callback(color);
                    },
                  ),
                ),
              ),
            );
  }
}