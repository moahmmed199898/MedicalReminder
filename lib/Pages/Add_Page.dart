import 'package:flutter/material.dart';
import 'package:medical_reminder/Components/Background_Animation.dart';


import 'package:medical_reminder/Components/Color_Picker.dart';
import 'package:medical_reminder/Components/DaysPicker/Days_Picker.dart';
import 'package:medical_reminder/Components/Input_Box.dart';
import 'package:medical_reminder/Components/Tablet_Pill_Picker.dart';
import 'package:medical_reminder/Services/Drugs_API.dart';

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

  void _medTypeOnChangeHandler(String string) {
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
          backgroundColor: Color.fromRGBO(58, 151, 187, 1),
        ),
        body: Stack(
            children: [
              // BackgroundAnimation(),
          SingleChildScrollView(

              child:Container(
                      margin: EdgeInsets.all(20),
                      child: Column(
                        children: [
                          InputBox("What is the Medication Name", (String string) => print(string)),
                          InputBox("What is the Medication NickName", (String string) => print(string)),
                          TabletPillPicker(_medTypeOnChangeHandler),
                          ColorPicker("What color is your $_medType", _colorPickerOnChangeHandler),
                          Text("What Days Do You Take The Medication?", style: TextStyle(color: Color.fromRGBO(41, 135, 8, 1), fontWeight: FontWeight.bold, fontSize: 20)),
                          DaysPicker(_onDayCheckedHandler),
                          FlatButton(onPressed: ()=>DrugsAPI().getDrugNameSuggestions("ibuprofen"), child: Text("Hello"))
                        ],
                      )
                  )
              )],
          )
        );
  }
}
