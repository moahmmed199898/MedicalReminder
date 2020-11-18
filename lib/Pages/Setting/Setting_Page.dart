import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class SettingPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text("Setting")),
      body: ListView(
          children: [
              ListTile(
                leading: FaIcon(FontAwesomeIcons.balanceScale),
                title: Text("Legal"),
                onTap: ()=>Navigator.pushNamed(context, "/Legal"),
              )
          ],
      ),
    );
  }

}