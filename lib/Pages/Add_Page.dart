
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medical_reminder/Components/Color_Picker.dart';
import 'package:medical_reminder/Components/DaysPicker/Days_Picker.dart';
import 'package:medical_reminder/Components/Input_Box.dart';
import 'package:medical_reminder/Components/MedicationCard/Medication_Card.dart';
import 'package:medical_reminder/Components/Tablet_Pill_Picker.dart';
import 'package:medical_reminder/Constants.dart';
import 'package:medical_reminder/Services/Firebase/Database.dart';
import 'package:medical_reminder/Services/Firebase/Firebase_Authorizer.dart';
import 'package:medical_reminder/Types/BackgroundSettingEnum.dart';

class AddPage extends StatefulWidget {
  @override
  _AddPage createState() => _AddPage();
}

class _AddPage extends State<AddPage> {
  String _medicationName = " ";
  String _medNickName = " ";
  Color _medColor = Color.fromRGBO(41, 135, 8, 1);
  String _medType = "Tablet";
  List<String> _medDays;
  TimeOfDay _time = TimeOfDay(hour: 8, minute: 0);
  BackgroundSetting _currentBackground = BackgroundSetting.Evening2Morning;
  IconData _icon = FontAwesomeIcons.tablets;
  Color _backgroundColor = Constants.offColor;
  Color _fontColor = Colors.black;
  void _colorPickerOnChangeHandler(Color color) {
    double luminance = color.computeLuminance();
    setState(() {
      _medColor = color;
      if(luminance < 0.5) {
        _backgroundColor = Constants.offColor;
        _fontColor = Colors.white;
      } else {
        _backgroundColor = Constants.mainColor;
        _fontColor = Colors.black;
      }
    });
  }

  void _medTypeOnChangeHandler(String string) {
    setState(() {
      _medType = string;
      if(_medType == "Tablet") {
        _icon = FontAwesomeIcons.tablets;
      } else {
        _icon = FontAwesomeIcons.pills;
      }
    });
  }

  void _onDayCheckedHandler(List<String> days) {
    _medDays = days;
  }

  void onClickShowTimeHandler() {
    showTimePicker(context: context, initialTime: _time).then((value) => setState(()=>{
      _time = value
    }));
  }
  void onChangeMedNameHandler(String value) {
    setState(() {
      _medicationName = value;
    });
  }
  void onChangeMedNickNameHandler(String value) {
    setState(() {
      _medNickName = value;
    });
  }

  void onSubmitHandler() async {
    await FirebaseAuthorizer(context).checkIfUserIsLoggedIN();
    Database database = Database();
    await database.addMedication(_medicationName, _medNickName, _medColor, _medType, _medDays, _time).then((value) => print("added")).catchError((e)=> print(e.toString()));
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
        body: SingleChildScrollView(
              child:Container(
                      margin: EdgeInsets.only(top: 20, right: 10, left: 10, bottom: 20),
                      child: Column(
                        children: [
                          MedicationCard(_medNickName, "Let's add your medication", _icon, _medColor, backgroundColor: _backgroundColor,),
                          InputBox("What is the Medication Name", onChangeMedNameHandler),
                          InputBox("What is the Medication NickName", onChangeMedNickNameHandler),
                          TabletPillPicker(_medTypeOnChangeHandler),
                          ColorPicker("What color is your $_medType",_medColor , _colorPickerOnChangeHandler),
                          Text("What Days Do You Take The Medication?", style: TextStyle(color: _medColor, fontWeight: FontWeight.bold, fontSize: 20)),
                          DaysPicker(_onDayCheckedHandler),
                          Text("What Time Do You Take The Medication?", style: TextStyle(color: _medColor, fontWeight: FontWeight.bold, fontSize: 20)),
                          FlatButton(onPressed:onClickShowTimeHandler,color: _medColor, child: Text("Click me to select time", style: TextStyle(color: _fontColor),)),
                          FlatButton(onPressed: onSubmitHandler, color: _medColor, child: Text("Submit", style: TextStyle(color: _fontColor))),
                        ],
                      )
                  )
          )
        );
  }
}
