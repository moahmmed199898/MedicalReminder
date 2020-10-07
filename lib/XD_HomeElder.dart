import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class Splash_Screen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Flexible(child:
        Row(
          children: [
            Flexible(child: Container(color: Color.fromRGBO(0, 154, 203, 1))),
            Flexible(child: Container(color: Color.fromRGBO(255, 154, 203, 1))),
          ]
        )),
      Flexible(child:
      Row(
        children: [Flexible(child: Container(color: Color.fromRGBO(255, 255, 203, 1)))],
      ))

      ],
    );
  }


}

//
// class XD_HomeElder extends StatefulWidget {
//   XD_HomeElder({Key key, this.title}) : super(key: key);
//   final String title;
//
//   @override
//   _XD_HomeElder createState() => _XD_HomeElder();
// }
//
// class _XD_HomeElder extends State<XD_HomeElder> {
//   @override
//   Widget build(BuildContext context) {
//
//     return Container(
//       color: Color.fromRGBO(0, 154, 203, 1),
//     );
//
//
//   }
//   }