import 'package:flutter/material.dart';
import 'package:o_color_picker/o_color_picker.dart';

class ColorPicker extends StatefulWidget {
  final String title;
  final void Function(Color) callback;
  final Color defaultColor;
  ColorPicker(this.title,this.defaultColor, this.callback);
  @override
  _ColorPicker createState() => _ColorPicker();
}

class _ColorPicker extends State<ColorPicker> {

  @override
  Widget build(BuildContext context) {
    Color selectedColor = widget.defaultColor;
    return FlatButton(
              color: selectedColor,
              textColor: Colors.black,
              child: Text(widget.title),
              onPressed: () => showDialog<void>(
                context: context,
                builder: (_) => Material(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      OColorPicker(
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
                    ],
                  )
                ),
              ),
            );
  }
}