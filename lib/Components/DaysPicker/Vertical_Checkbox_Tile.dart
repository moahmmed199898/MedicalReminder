import 'package:flutter/material.dart';

class VerticalCheckBoxTile extends StatefulWidget {
  final void Function(bool) callback;
  final String title;
  VerticalCheckBoxTile(this.title, this.callback);

  _VerticalCheckBoxTile createState() => _VerticalCheckBoxTile();
}

class _VerticalCheckBoxTile extends State<VerticalCheckBoxTile> {
  bool _value = false;

  void onChangeStateHandler(bool value) {
    widget.callback(value);
    setState(() {
      _value = value;
    });
  }
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Checkbox(tristate: false, value: _value, onChanged: onChangeStateHandler,),
        Text(widget.title),
      ],
    );
  }

}