import 'package:flutter/material.dart';

class TabletPillPicker extends StatefulWidget {
  void Function(String) callback;

  TabletPillPicker(this.callback);

  _TabletPillPicker createState() => _TabletPillPicker();
}

class _TabletPillPicker extends State<TabletPillPicker> {
  String _medType;
  void _radioOnChangeHandler(String value) {
    setState(() {
      _medType = value;
    });
    widget.callback(value);
  }


  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 150,
          child: ListTile(
            title: Text("Tablet"),
            leading: Radio(
              value: "Tablet",
              groupValue: _medType,
              onChanged: _radioOnChangeHandler,
            ),
          ),
        ),
        Container(
          width: 200,
          child: ListTile(
            title: Text("Pill"),
            leading: Radio(
              value: "Pill",
              groupValue: _medType,
              onChanged: _radioOnChangeHandler,
            ),
          ),
        )
      ],
    );
  }

}