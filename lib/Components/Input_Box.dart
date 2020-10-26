import 'package:flutter/material.dart';

class InputBox extends StatelessWidget {
  final String question;
  final void Function(String) callback;


  InputBox(this.question, this.callback);


  @override
  Widget build(BuildContext context) {
    return TextFormField(
        decoration: InputDecoration(
        hintText: question,
        border: OutlineInputBorder(),
    ),
      onChanged: callback
    );
  }

}