import 'package:flutter/material.dart';
import 'package:day_night_time_picker/day_night_time_picker.dart';


import 'package:medical_reminder/Components/Color_Picker.dart';
import 'package:medical_reminder/Components/Days_Picker.dart';
import 'package:medical_reminder/Components/Input_Box.dart';

class AddPage extends StatefulWidget {
  @override
  _AddPage createState() => _AddPage();
}

class _AddPage extends State<AddPage> {
  String _medicationName;
  String _medNickName;
  Color _medColor;
  String _medType = "Tablet";
  List<String> _medDays;
  TimeOfDay _time = TimeOfDay(hour: 8, minute: 0);

  void _colorPickerOnChangeHandler(Color color) {
    setState(() {
      _medColor = color;
    });
  }

  void _radioOnChangeHandler(String string) {
    setState(() {
      _medType = string;
    });
  }

  void _onDayCheckedHandler(List<String> days) {
    _medDays = days;
  }

  void _onTimeChangedHandler(TimeOfDay time) {
    setState(() {
      _time = time;
    });
  }


  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Color.fromRGBO(41, 135, 8, 1),
        ),
        body: Center(
          child: SingleChildScrollView(

              child: Container(
                  margin: EdgeInsets.all(20),
                  child: Column(
                      children: [
                        InputBox("What is the Medication Name", (String string) => print(string)),
                        InputBox("What is the Medication NickName", (String string) => print(string)),
                        Row(
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
                        ),
                        ColorPicker("What color is your $_medType", _colorPickerOnChangeHandler),
                        Text("What Days Do You Take The Medication?", style: TextStyle(color: Color.fromRGBO(41, 135, 8, 1), fontWeight: FontWeight.bold, fontSize: 20)),
                        DaysPicker(_onDayCheckedHandler),
                        FlatButton(
                          onPressed: () {
                            Navigator.of(context).push(
                              showPicker(
                                context: context,
                                value: _time,
                                onChange: _onTimeChangedHandler,
                              ),
                            );
                          },
                          child: Text(
                            "Open time picker",
                            style: TextStyle(color: Colors.cyan),
                          ),
                        ),

                      ],



                  )
              )
          ),
        ));
  }
}
