import 'package:flutter/material.dart';
import 'package:medical_reminder/Constants.dart';

class InputBox extends StatelessWidget {
  final String question;
  final void Function(String) callback;


  InputBox(this.question, this.callback);


  @override
  Widget build(BuildContext context) {
    return Container(
      color: Constants.mainColor.withOpacity(0.6),
      margin: EdgeInsets.only(bottom: 10, top: 10),
      child: TextFormField(
        style: TextStyle(
          fontSize: 17,
          fontWeight: FontWeight.bold,
          fontStyle: FontStyle.italic
        ),
          decoration: InputDecoration(
            hintText: question,
            border: OutlineInputBorder(),
          ),
          onChanged: callback,
        enableInteractiveSelection: true,

      ),
    );
  }

}