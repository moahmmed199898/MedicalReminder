import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:medical_reminder/Constants.dart';

class MedicationCard extends StatelessWidget {
  final String medName;
  final String subText;
  final IconData icon;
  final Color iconColor;
  final double transparency;

  //font sizes
  final double _medNameFontSize = 35;
  final double _subTextFontSize = 18;

  //background colors
  //dark background
  final Color _darkBackground = Constants.offColor;
  //light background
  final Color _lightBackground = Constants.mainColor;

  Color _backgroundColor;


  MedicationCard(this.medName, this.subText, this.icon, this.iconColor, [this.transparency=1]) {
    //calculate the mean of the colors
    double avgMean = (iconColor.blue + iconColor.red + iconColor.green)/3;
    if(avgMean > 255/2) {
      //light icon
      _backgroundColor = _darkBackground.withOpacity(transparency);
    } else {
      //dark icon
      _backgroundColor = _lightBackground.withOpacity(transparency);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Card(
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
