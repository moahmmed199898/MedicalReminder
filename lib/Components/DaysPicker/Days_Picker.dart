import 'package:flutter/material.dart';

import 'Vertical_Checkbox_Tile.dart';

class DaysPicker extends StatefulWidget{
  final void Function(List<String>) callback;
  DaysPicker(this.callback);

  List<String> _days = new List<String>();
  @override
 _DaysPicker createState() => _DaysPicker();
}

class _DaysPicker extends State<DaysPicker> {
  final List<String> weekDays = ["M", "T", "W", "TR", "F", "St", "Sn"];

  void onChangeHandler(String day, bool checked) {
    if(checked) {
      widget._days.add(day);
    } else {
      widget._days.remove(day);
    }
    widget.callback(widget._days);
  }
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.only(bottom: 20, top: 5),
      child:Flex(
          direction: Axis.horizontal,
          children:  weekDays.map((e) => VerticalCheckBoxTile(e, (value)=>onChangeHandler(e,value))).toList()
      ));

  }

}