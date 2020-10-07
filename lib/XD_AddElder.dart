import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';

class XD_AddElder extends StatelessWidget {
  XD_AddElder({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          // Adobe XD layer: 'App bar / 1. Top /A…' (group)
          SizedBox(
            width: 360.0,
            height: 80.0,
            child: Stack(
              children: <Widget>[
                Container(),
                Container(),
              ],
            ),
          ),
          Transform.translate(
            offset: Offset(10.0, 264.0),
            child:
                // Adobe XD layer: '🌕 Light Theme/1. H…' (text)
                Text(
              'What is your medication Name',
              style: TextStyle(
                fontFamily: 'Roboto',
                fontSize: 25,
                color: const Color(0xde000000),
                height: 1.2,
              ),
              textAlign: TextAlign.left,
            ),
          ),
          Container(),
          Container(),
        ],
      ),
    );
  }
}
