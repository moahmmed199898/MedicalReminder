import 'package:flutter/material.dart';
import "package:font_awesome_flutter/font_awesome_flutter.dart";

class HomeButton extends StatelessWidget {
  final String text;
  final Color color;
  final IconData icon;

  HomeButton(this.text, this.color, this.icon);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Card(
            margin: EdgeInsets.only(right: 30, top: 20, left: 30, bottom: 20),
            color: color,
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(40)),
            ),
            child: InkWell(
              onTap: (){
                print("Card tapped");
              },
              child: Container(
                width: 130,
                height: 130,
                child: Center(
                  child: FaIcon(
                    icon,
                    size: 80,
                    color: Color.fromRGBO(255, 255, 255, 1),
                  ),
                )
              ),
            )
          ),
          Text(
            text,
            style: TextStyle(
              color: color,
              fontSize: 20,
              fontWeight: FontWeight.bold
            )
          )
        ],
      )

    );
  }
}
