import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class LegalPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Legal")),
      body: ListView(
        children: [
          ListTile(
            leading: FaIcon(FontAwesomeIcons.balanceScale),
            title: Text("Privacy Policy"),
            onTap: ()=> Navigator.pushNamed(context, "/PrivacyPolicy"),
          ),
          ListTile(
            leading: FaIcon(FontAwesomeIcons.balanceScale),
            title: Text("Terms & Conditions"),
          )
        ],
      ),
    );
  }

}