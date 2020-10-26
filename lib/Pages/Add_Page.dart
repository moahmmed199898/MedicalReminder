import 'package:flutter/material.dart';
import 'package:medical_reminder/Components/Input_Box.dart';

class AddPage extends StatefulWidget {
  @override
  _AddPage createState() => _AddPage();
}

class _AddPage extends State<AddPage> {
  String _medicationName;
  String _medNickName;
  Color _medColor;



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
                            
                          ],
                        )
                      ]
                  )
              )
          ),
        ));
  }
}
