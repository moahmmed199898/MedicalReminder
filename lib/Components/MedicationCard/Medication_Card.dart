import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medical_reminder/Constants.dart';

class MedicationCard extends StatelessWidget {
  final String medName;
  final String subText;
  final IconData icon;
  final Color iconColor;

  //font sizes
  double _medNameFontSize = 35;
  double _subTextFontSize = 18;

  //background colors
  //dark background
  final Color _darkBackground = Constants.offColor;
  //light background
  final Color _lightBackground = Constants.mainColor;

  Color _backgroundColor;


  MedicationCard(this.medName, this.subText, this.icon, this.iconColor, {Color backgroundColor}) {
    //calculate the mean of the colors
    if(backgroundColor !=null) {
      _backgroundColor = backgroundColor;
      return;
    }

    if(iconColor.computeLuminance() < 0.5) {
      _backgroundColor = _darkBackground;
    } else {
      _backgroundColor = _lightBackground;
    }

    if(medName.length > 13) {
      this._medNameFontSize = _medNameFontSize - (medName.length - 10);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
      clipBehavior: Clip.hardEdge,
      color: _backgroundColor,
      child: Container(
        color: _backgroundColor,
        height: 100,
              child: Row(
              children: [
                Container(
                  margin: EdgeInsets.only(left: 10, right: 10),
                  child: FaIcon(
                    icon,
                    size: 80,
                    color: iconColor,
                  ),
                ),
                Column(
                  children: [
                    Container(
                      margin: EdgeInsets.only(top: 10 ),
                      child: Text(
                        medName,
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontSize: _medNameFontSize,
                          fontWeight: FontWeight.bold,
                        ),
                        maxLines: 1,
                      ),
                    ),
                    Text(
                      subText,
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontSize: _subTextFontSize,
                        fontWeight: FontWeight.bold,
                      ),
                    )
                  ],
                )
              ],
            ),
    ));
  }
}
