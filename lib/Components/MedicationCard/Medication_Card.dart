import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class MedicationCard extends StatelessWidget {
  final String medName;
  final String subText;
  final IconData icon;
  final Color iconColor;

  MedicationCard(this.medName, this.subText, this.icon, this.iconColor);

  @override
  Widget build(BuildContext context) {
    return Card(
        child: Container(
      color: Color.fromRGBO(45, 45, 45, 1),
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
                      margin: EdgeInsets.only(top: 10, bottom: 10),
                      child: Text(
                        medName,
                        style: TextStyle(
                          color: Color.fromRGBO(255, 255, 255, 1),
                          fontSize: 35,
                          fontWeight: FontWeight.bold,
                        ),
                      ),
                    ),
                    Text(
                      subText,
                      style: TextStyle(
                        color: Color.fromRGBO(255, 255, 255, 1),
                        fontSize: 15,
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
