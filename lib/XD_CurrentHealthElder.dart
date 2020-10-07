import 'package:flutter/material.dart';
import 'package:adobe_xd/pinned.dart';
import 'package:flutter_svg/flutter_svg.dart';

class XD_CurrentHealthElder extends StatelessWidget {
  XD_CurrentHealthElder({
    Key key,
  }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Transform.translate(
            offset: Offset(-5.5, 80.0),
            child: SizedBox(
              width: 365.0,
              height: 101.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(5.5, 0.0, 360.0, 78.0),
                    size: Size(365.5, 101.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    fixedHeight: true,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xff087895),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(19.5, 8.0, 59.1, 61.4),
                    size: Size(365.5, 101.0),
                    pinLeft: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'pills-solid' (shape)
                        SvgPicture.string(
                      _svg_tbs6oq,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(111.5, 19.0, 129.0, 21.0),
                    size: Size(365.5, 101.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Acetaminophen',
                      style: TextStyle(
                        fontFamily: 'Footlight MT',
                        fontSize: 20,
                        color: const Color(0xfff3f3f3),
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(111.5, 52.0, 142.0, 13.0),
                    size: Size(365.5, 101.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Last time taken: 09-28-2020',
                      style: TextStyle(
                        fontFamily: 'Footlight MT',
                        fontSize: 12,
                        color: const Color(0xfff3f3f3),
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(271.5, 52.0, 59.0, 13.0),
                    size: Size(365.5, 101.0),
                    pinRight: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Dose: 20mg',
                      style: TextStyle(
                        fontFamily: 'Footlight MT',
                        fontSize: 12,
                        color: const Color(0xfff3f3f3),
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(5.5, 0.0, 360.0, 101.0),
                    size: Size(365.5, 101.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xff2d2d2d),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(77.5, 1.0, 278.0, 41.0),
                    size: Size(365.5, 101.0),
                    pinRight: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Acetaminophen',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 37,
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(80.5, 47.0, 221.0, 22.0),
                    size: Size(365.5, 101.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Next pill on: 09-28-2020',
                      style: TextStyle(
                        fontFamily: 'Footlight MT',
                        fontSize: 21,
                        color: const Color(0xffffffff),
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 4.5, 74.9, 66.6),
                    size: Size(365.5, 101.0),
                    pinLeft: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'tablets-solid' (shape)
                        SvgPicture.string(
                      _svg_phu7ja,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
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
            offset: Offset(-5.5, 282.0),
            child: SizedBox(
              width: 365.0,
              height: 101.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(5.5, 0.0, 360.0, 78.0),
                    size: Size(365.5, 101.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    fixedHeight: true,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xff087895),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(19.5, 8.0, 59.1, 61.4),
                    size: Size(365.5, 101.0),
                    pinLeft: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'pills-solid' (shape)
                        SvgPicture.string(
                      _svg_tbs6oq,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(111.5, 19.0, 129.0, 21.0),
                    size: Size(365.5, 101.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Acetaminophen',
                      style: TextStyle(
                        fontFamily: 'Footlight MT',
                        fontSize: 20,
                        color: const Color(0xfff3f3f3),
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(111.5, 52.0, 142.0, 13.0),
                    size: Size(365.5, 101.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Last time taken: 09-28-2020',
                      style: TextStyle(
                        fontFamily: 'Footlight MT',
                        fontSize: 12,
                        color: const Color(0xfff3f3f3),
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(271.5, 52.0, 59.0, 13.0),
                    size: Size(365.5, 101.0),
                    pinRight: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Dose: 20mg',
                      style: TextStyle(
                        fontFamily: 'Footlight MT',
                        fontSize: 12,
                        color: const Color(0xfff3f3f3),
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(5.5, 0.0, 360.0, 101.0),
                    size: Size(365.5, 101.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xff2d2d2d),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(88.5, 2.0, 238.0, 43.0),
                    size: Size(365.5, 101.0),
                    pinRight: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Amitriptyline',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 39,
                        color: const Color(0xfff3f3f3),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(88.5, 52.0, 221.0, 22.0),
                    size: Size(365.5, 101.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Next pill on: 09-28-2020',
                      style: TextStyle(
                        fontFamily: 'Footlight MT',
                        fontSize: 21,
                        color: const Color(0xfff3f3f3),
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 4.5, 74.9, 66.6),
                    size: Size(365.5, 101.0),
                    pinLeft: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'tablets-solid' (shape)
                        SvgPicture.string(
                      _svg_qfnkyk,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(-5.5, 383.0),
            child: SizedBox(
              width: 365.0,
              height: 101.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(5.5, 0.0, 360.0, 78.0),
                    size: Size(365.5, 101.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    fixedHeight: true,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xff087895),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(19.5, 8.0, 59.1, 61.4),
                    size: Size(365.5, 101.0),
                    pinLeft: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'pills-solid' (shape)
                        SvgPicture.string(
                      _svg_tbs6oq,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(111.5, 19.0, 129.0, 21.0),
                    size: Size(365.5, 101.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Acetaminophen',
                      style: TextStyle(
                        fontFamily: 'Footlight MT',
                        fontSize: 20,
                        color: const Color(0xfff3f3f3),
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(111.5, 52.0, 142.0, 13.0),
                    size: Size(365.5, 101.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Last time taken: 09-28-2020',
                      style: TextStyle(
                        fontFamily: 'Footlight MT',
                        fontSize: 12,
                        color: const Color(0xfff3f3f3),
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(271.5, 52.0, 59.0, 13.0),
                    size: Size(365.5, 101.0),
                    pinRight: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Dose: 20mg',
                      style: TextStyle(
                        fontFamily: 'Footlight MT',
                        fontSize: 12,
                        color: const Color(0xfff3f3f3),
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(5.5, 0.0, 360.0, 101.0),
                    size: Size(365.5, 101.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xff009acb),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(88.5, 2.0, 212.0, 43.0),
                    size: Size(365.5, 101.0),
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Amlodipine',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 39,
                        color: const Color(0xfff3f3f3),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(88.5, 52.0, 221.0, 22.0),
                    size: Size(365.5, 101.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Next pill on: 09-28-2020',
                      style: TextStyle(
                        fontFamily: 'Footlight MT',
                        fontSize: 21,
                        color: const Color(0xfff3f3f3),
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 4.5, 74.9, 66.6),
                    size: Size(365.5, 101.0),
                    pinLeft: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'tablets-solid' (shape)
                        SvgPicture.string(
                      _svg_ir4gwb,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(0.0, 484.0),
            child: SizedBox(
              width: 360.0,
              height: 101.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 360.0, 78.0),
                    size: Size(360.0, 101.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xff087895),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(14.0, 8.0, 59.1, 61.4),
                    size: Size(360.0, 101.0),
                    pinLeft: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'pills-solid' (shape)
                        SvgPicture.string(
                      _svg_ovu0z6,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(106.0, 19.0, 129.0, 21.0),
                    size: Size(360.0, 101.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Acetaminophen',
                      style: TextStyle(
                        fontFamily: 'Footlight MT',
                        fontSize: 20,
                        color: const Color(0xfff3f3f3),
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(106.0, 52.0, 142.0, 13.0),
                    size: Size(360.0, 101.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Last time taken: 09-28-2020',
                      style: TextStyle(
                        fontFamily: 'Footlight MT',
                        fontSize: 12,
                        color: const Color(0xfff3f3f3),
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(266.0, 52.0, 59.0, 13.0),
                    size: Size(360.0, 101.0),
                    pinRight: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Dose: 20mg',
                      style: TextStyle(
                        fontFamily: 'Footlight MT',
                        fontSize: 12,
                        color: const Color(0xfff3f3f3),
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 360.0, 101.0),
                    size: Size(360.0, 101.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xff2d2d2d),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(83.0, 2.0, 208.0, 43.0),
                    size: Size(360.0, 101.0),
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Amoxicillin',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 39,
                        color: const Color(0xfff3f3f3),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(83.0, 52.0, 221.0, 22.0),
                    size: Size(360.0, 101.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Next pill on: 09-28-2020',
                      style: TextStyle(
                        fontFamily: 'Footlight MT',
                        fontSize: 21,
                        color: const Color(0xfff3f3f3),
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(-5.5, 585.0),
            child: SizedBox(
              width: 365.0,
              height: 101.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(5.5, 0.0, 360.0, 78.0),
                    size: Size(365.5, 101.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    fixedHeight: true,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xff087895),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(19.5, 8.0, 59.1, 61.4),
                    size: Size(365.5, 101.0),
                    pinLeft: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'pills-solid' (shape)
                        SvgPicture.string(
                      _svg_tbs6oq,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(111.5, 19.0, 129.0, 21.0),
                    size: Size(365.5, 101.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Acetaminophen',
                      style: TextStyle(
                        fontFamily: 'Footlight MT',
                        fontSize: 20,
                        color: const Color(0xfff3f3f3),
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(111.5, 52.0, 142.0, 13.0),
                    size: Size(365.5, 101.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Last time taken: 09-28-2020',
                      style: TextStyle(
                        fontFamily: 'Footlight MT',
                        fontSize: 12,
                        color: const Color(0xfff3f3f3),
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(271.5, 52.0, 59.0, 13.0),
                    size: Size(365.5, 101.0),
                    pinRight: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Dose: 20mg',
                      style: TextStyle(
                        fontFamily: 'Footlight MT',
                        fontSize: 12,
                        color: const Color(0xfff3f3f3),
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(5.5, 0.0, 360.0, 101.0),
                    size: Size(365.5, 101.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xff009acb),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(88.5, 2.0, 119.0, 43.0),
                    size: Size(365.5, 101.0),
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Ativan',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 39,
                        color: const Color(0xfff3f3f3),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(88.5, 52.0, 221.0, 22.0),
                    size: Size(365.5, 101.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Next pill on: 09-28-2020',
                      style: TextStyle(
                        fontFamily: 'Footlight MT',
                        fontSize: 21,
                        color: const Color(0xfff3f3f3),
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 4.5, 74.9, 66.6),
                    size: Size(365.5, 101.0),
                    pinLeft: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'tablets-solid' (shape)
                        SvgPicture.string(
                      _svg_ir4gwb,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(-5.5, 686.0),
            child: SizedBox(
              width: 365.0,
              height: 101.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(5.5, 0.0, 360.0, 78.0),
                    size: Size(365.5, 101.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    fixedHeight: true,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xff087895),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(19.5, 8.0, 59.1, 61.4),
                    size: Size(365.5, 101.0),
                    pinLeft: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'pills-solid' (shape)
                        SvgPicture.string(
                      _svg_tbs6oq,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(111.5, 19.0, 129.0, 21.0),
                    size: Size(365.5, 101.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Acetaminophen',
                      style: TextStyle(
                        fontFamily: 'Footlight MT',
                        fontSize: 20,
                        color: const Color(0xfff3f3f3),
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(111.5, 52.0, 142.0, 13.0),
                    size: Size(365.5, 101.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Last time taken: 09-28-2020',
                      style: TextStyle(
                        fontFamily: 'Footlight MT',
                        fontSize: 12,
                        color: const Color(0xfff3f3f3),
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(271.5, 52.0, 59.0, 13.0),
                    size: Size(365.5, 101.0),
                    pinRight: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Dose: 20mg',
                      style: TextStyle(
                        fontFamily: 'Footlight MT',
                        fontSize: 12,
                        color: const Color(0xfff3f3f3),
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(5.5, 0.0, 360.0, 101.0),
                    size: Size(365.5, 101.0),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    pinBottom: true,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xff2d2d2d),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(88.5, 2.0, 228.0, 43.0),
                    size: Size(365.5, 101.0),
                    pinRight: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Atorvastatin',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 39,
                        color: const Color(0xfff3f3f3),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(88.5, 52.0, 221.0, 22.0),
                    size: Size(365.5, 101.0),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Next pill on: 09-28-2020',
                      style: TextStyle(
                        fontFamily: 'Footlight MT',
                        fontSize: 21,
                        color: const Color(0xfff3f3f3),
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 4.5, 74.9, 66.6),
                    size: Size(365.5, 101.0),
                    pinLeft: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'tablets-solid' (shape)
                        SvgPicture.string(
                      _svg_ir4gwb,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
          Transform.translate(
            offset: Offset(0.0, 181.0),
            child: SizedBox(
              width: 360.0,
              height: 379.0,
              child: Stack(
                children: <Widget>[
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 360.0, 78.0),
                    size: Size(360.0, 379.1),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    fixedHeight: true,
                    child: Container(
                      decoration: BoxDecoration(
                        color: const Color(0xff087895),
                      ),
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(14.0, 8.0, 59.1, 61.4),
                    size: Size(360.0, 379.1),
                    pinLeft: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'pills-solid' (shape)
                        SvgPicture.string(
                      _svg_icym1k,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(106.0, 19.0, 129.0, 21.0),
                    size: Size(360.0, 379.1),
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Acetaminophen',
                      style: TextStyle(
                        fontFamily: 'Footlight MT',
                        fontSize: 20,
                        color: const Color(0xfff3f3f3),
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(106.0, 52.0, 142.0, 13.0),
                    size: Size(360.0, 379.1),
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Last time taken: 09-28-2020',
                      style: TextStyle(
                        fontFamily: 'Footlight MT',
                        fontSize: 12,
                        color: const Color(0xfff3f3f3),
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(266.0, 52.0, 59.0, 13.0),
                    size: Size(360.0, 379.1),
                    pinRight: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Dose: 20mg',
                      style: TextStyle(
                        fontFamily: 'Footlight MT',
                        fontSize: 12,
                        color: const Color(0xfff3f3f3),
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(0.0, 0.0, 360.0, 101.0),
                    size: Size(360.0, 379.1),
                    pinLeft: true,
                    pinRight: true,
                    pinTop: true,
                    fixedHeight: true,
                    child: SvgPicture.string(
                      _svg_mbl5tg,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(83.0, 7.0, 156.0, 43.0),
                    size: Size(360.0, 379.1),
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Adderall',
                      style: TextStyle(
                        fontFamily: 'Arial',
                        fontSize: 39,
                        color: const Color(0xfff3f3f3),
                        fontWeight: FontWeight.w700,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(83.0, 59.0, 221.0, 22.0),
                    size: Size(360.0, 379.1),
                    fixedWidth: true,
                    fixedHeight: true,
                    child: Text(
                      'Next pill on: 09-28-2020',
                      style: TextStyle(
                        fontFamily: 'Footlight MT',
                        fontSize: 21,
                        color: const Color(0xfff3f3f3),
                        fontWeight: FontWeight.w300,
                      ),
                      textAlign: TextAlign.left,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(8.3, 21.1, 63.0, 49.0),
                    size: Size(360.0, 379.1),
                    pinLeft: true,
                    pinTop: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'capsules-solid' (shape)
                        SvgPicture.string(
                      _svg_5k8r6o,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                  Pinned.fromSize(
                    bounds: Rect.fromLTWH(8.3, 330.1, 63.0, 49.0),
                    size: Size(360.0, 379.1),
                    pinLeft: true,
                    pinBottom: true,
                    fixedWidth: true,
                    fixedHeight: true,
                    child:
                        // Adobe XD layer: 'capsules-solid' (shape)
                        SvgPicture.string(
                      _svg_o5l1gt,
                      allowDrawingOutsideViewBox: true,
                      fit: BoxFit.fill,
                    ),
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}

const String _svg_tbs6oq =
    '<svg viewBox="14.0 8.0 59.1 61.4" ><path transform="translate(13.99, -24.0)" d="M 11.50000286102295 32 C 5.144197940826416 32 0 38.87157440185547 0 47.36161041259766 L 0 78.08484649658203 C 0 86.57488250732422 5.144197940826416 93.44645690917969 11.50000286102295 93.44645690917969 C 17.85580825805664 93.44645690917969 23.0000057220459 86.57488250732422 23.0000057220459 78.08484649658203 L 23.0000057220459 47.36161041259766 C 23.0000057220459 38.87157440185547 17.85580825805664 32 11.50000286102295 32 Z M 16.4285774230957 62.72322845458984 L 6.571430683135986 62.72322845458984 L 6.571430683135986 47.36161041259766 C 6.571430683135986 43.72694778442383 8.779021263122559 40.77806854248047 11.50000286102295 40.77806854248047 C 14.22098541259766 40.77806854248047 16.4285774230957 43.72694778442383 16.4285774230957 47.36161041259766 L 16.4285774230957 62.72322845458984 Z M 30.77277946472168 58.649658203125 C 30.41340065002441 58.16960144042969 29.8076000213623 58.22447204589844 29.50983238220215 58.75937652587891 C 24.85849189758301 67.33171844482422 25.36161613464355 79.34668731689453 31.14242172241211 87.06863403320313 C 36.92322540283203 94.79059600830078 45.91786956787109 95.46266937255859 52.33528518676758 89.24944305419922 C 52.74599456787109 88.8516845703125 52.77680206298828 88.04246520996094 52.41742706298828 87.56240844726563 L 30.77277946472168 58.649658203125 Z M 54.36831665039063 56.04366302490234 C 48.5875129699707 48.32172012329102 39.59287261962891 47.6496467590332 33.17545700073242 53.86287689208984 C 32.76474380493164 54.2606201171875 32.73394012451172 55.06985473632813 33.09331512451172 55.54989624023438 L 54.73796463012695 84.46265411376953 C 55.09734344482422 84.94270324707031 55.70314788818359 84.88784790039063 56.00091171264648 84.35293579101563 C 60.65225219726563 75.76687622070313 60.15939331054688 63.765625 54.36831665039063 56.04367828369141 Z" fill="#f3f3f3" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_phu7ja =
    '<svg viewBox="-5.5 4.5 74.9 66.6" ><defs><filter id="shadow"><feDropShadow dx="3" dy="5" stdDeviation="25"/></filter></defs><path transform="matrix(0.956305, -0.292372, 0.292372, 0.956305, -5.47, 22.95)" d="M 15.74201202392578 18.89181327819824 C 7.762792110443115 18.89181327819824 1.229867458343506 24.64748382568359 0.009863657876849174 32.14459991455078 C -0.06884626299142838 32.61685943603516 0.3345421254634857 33.05960083007813 0.8264791965484619 33.05960083007813 L 30.66737747192383 33.05960083007813 C 31.15931510925293 33.05960083007813 31.56270599365234 32.61685943603516 31.48399543762207 32.14459991455078 C 30.25415420532227 24.64748382568359 23.72122955322266 18.89181327819824 15.74201202392578 18.89181327819824 Z M 30.65754127502441 36.2079963684082 L 0.8264791369438171 36.2079963684082 C 0.3345421254634857 36.2079963684082 -0.06884634494781494 36.65073776245117 0.009863601066172123 37.12300491333008 C 1.229867458343506 44.62012100219727 7.762792110443115 50.37578582763672 15.74201202392578 50.37578582763672 C 23.72122955322266 50.37578582763672 30.25415420532227 44.62012100219727 31.47415733337402 37.12300491333008 C 31.5528678894043 36.65073776245117 31.14947891235352 36.2079963684082 30.65754127502441 36.2079963684082 Z M 58.38311386108398 4.586284637451172 C 52.82422637939453 -0.9726041555404663 44.19565200805664 -1.454702615737915 38.02676010131836 3.012086391448975 C 37.63321304321289 3.297409534454346 37.60369491577148 3.887734174728394 37.94805145263672 4.222250461578369 L 58.73731231689453 25.02135276794434 C 59.0816650390625 25.3657054901123 59.67198944091797 25.33619117736816 59.94747161865234 24.94264221191406 C 64.42409515380859 18.77374839782715 63.94200134277344 10.14517498016357 58.38311004638672 4.586286067962646 Z M 35.71465682983398 6.465485095977783 C 35.37029647827148 6.121128082275391 34.77997589111328 6.150644302368164 34.50449371337891 6.54419469833374 C 30.0377025604248 12.71308517456055 30.51980400085449 21.34165954589844 36.06884765625 26.90055084228516 C 41.62773513793945 32.45943450927734 50.25630950927734 32.94153594970703 56.42520523071289 28.46490859985352 C 56.81874847412109 28.17958641052246 56.84827041625977 27.58926200866699 56.50391387939453 27.25474739074707 L 35.71465682983398 6.465485095977783 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_qfnkyk =
    '<svg viewBox="-5.5 4.5 74.9 66.6" ><defs><filter id="shadow"><feDropShadow dx="7" dy="3" stdDeviation="10"/></filter></defs><path transform="matrix(0.956305, -0.292372, 0.292372, 0.956305, -5.47, 22.95)" d="M 15.74201202392578 18.89181327819824 C 7.762792110443115 18.89181327819824 1.229867458343506 24.64748382568359 0.009863657876849174 32.14459991455078 C -0.06884626299142838 32.61685943603516 0.3345421254634857 33.05960083007813 0.8264791965484619 33.05960083007813 L 30.66737747192383 33.05960083007813 C 31.15931510925293 33.05960083007813 31.56270599365234 32.61685943603516 31.48399543762207 32.14459991455078 C 30.25415420532227 24.64748382568359 23.72122955322266 18.89181327819824 15.74201202392578 18.89181327819824 Z M 30.65754127502441 36.2079963684082 L 0.8264791369438171 36.2079963684082 C 0.3345421254634857 36.2079963684082 -0.06884634494781494 36.65073776245117 0.009863601066172123 37.12300491333008 C 1.229867458343506 44.62012100219727 7.762792110443115 50.37578582763672 15.74201202392578 50.37578582763672 C 23.72122955322266 50.37578582763672 30.25415420532227 44.62012100219727 31.47415733337402 37.12300491333008 C 31.5528678894043 36.65073776245117 31.14947891235352 36.2079963684082 30.65754127502441 36.2079963684082 Z M 58.38311386108398 4.586284637451172 C 52.82422637939453 -0.9726041555404663 44.19565200805664 -1.454702615737915 38.02676010131836 3.012086391448975 C 37.63321304321289 3.297409534454346 37.60369491577148 3.887734174728394 37.94805145263672 4.222250461578369 L 58.73731231689453 25.02135276794434 C 59.0816650390625 25.3657054901123 59.67198944091797 25.33619117736816 59.94747161865234 24.94264221191406 C 64.42409515380859 18.77374839782715 63.94200134277344 10.14517498016357 58.38311004638672 4.586286067962646 Z M 35.71465682983398 6.465485095977783 C 35.37029647827148 6.121128082275391 34.77997589111328 6.150644302368164 34.50449371337891 6.54419469833374 C 30.0377025604248 12.71308517456055 30.51980400085449 21.34165954589844 36.06884765625 26.90055084228516 C 41.62773513793945 32.45943450927734 50.25630950927734 32.94153594970703 56.42520523071289 28.46490859985352 C 56.81874847412109 28.17958641052246 56.84827041625977 27.58926200866699 56.50391387939453 27.25474739074707 L 35.71465682983398 6.465485095977783 Z" fill="#ffff00" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_ir4gwb =
    '<svg viewBox="-5.5 4.5 74.9 66.6" ><path transform="matrix(0.956305, -0.292372, 0.292372, 0.956305, -5.47, 22.95)" d="M 15.74201202392578 18.89181327819824 C 7.762792110443115 18.89181327819824 1.229867458343506 24.64748382568359 0.009863657876849174 32.14459991455078 C -0.06884626299142838 32.61685943603516 0.3345421254634857 33.05960083007813 0.8264791965484619 33.05960083007813 L 30.66737747192383 33.05960083007813 C 31.15931510925293 33.05960083007813 31.56270599365234 32.61685943603516 31.48399543762207 32.14459991455078 C 30.25415420532227 24.64748382568359 23.72122955322266 18.89181327819824 15.74201202392578 18.89181327819824 Z M 30.65754127502441 36.2079963684082 L 0.8264791369438171 36.2079963684082 C 0.3345421254634857 36.2079963684082 -0.06884634494781494 36.65073776245117 0.009863601066172123 37.12300491333008 C 1.229867458343506 44.62012100219727 7.762792110443115 50.37578582763672 15.74201202392578 50.37578582763672 C 23.72122955322266 50.37578582763672 30.25415420532227 44.62012100219727 31.47415733337402 37.12300491333008 C 31.5528678894043 36.65073776245117 31.14947891235352 36.2079963684082 30.65754127502441 36.2079963684082 Z M 58.38311386108398 4.586284637451172 C 52.82422637939453 -0.9726041555404663 44.19565200805664 -1.454702615737915 38.02676010131836 3.012086391448975 C 37.63321304321289 3.297409534454346 37.60369491577148 3.887734174728394 37.94805145263672 4.222250461578369 L 58.73731231689453 25.02135276794434 C 59.0816650390625 25.3657054901123 59.67198944091797 25.33619117736816 59.94747161865234 24.94264221191406 C 64.42409515380859 18.77374839782715 63.94200134277344 10.14517498016357 58.38311004638672 4.586286067962646 Z M 35.71465682983398 6.465485095977783 C 35.37029647827148 6.121128082275391 34.77997589111328 6.150644302368164 34.50449371337891 6.54419469833374 C 30.0377025604248 12.71308517456055 30.51980400085449 21.34165954589844 36.06884765625 26.90055084228516 C 41.62773513793945 32.45943450927734 50.25630950927734 32.94153594970703 56.42520523071289 28.46490859985352 C 56.81874847412109 28.17958641052246 56.84827041625977 27.58926200866699 56.50391387939453 27.25474739074707 L 35.71465682983398 6.465485095977783 Z" fill="#f3f3f3" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_ovu0z6 =
    '<svg viewBox="14.0 492.0 59.1 61.4" ><path transform="translate(13.99, 460.0)" d="M 11.50000286102295 32 C 5.144197940826416 32 0 38.87157440185547 0 47.36161041259766 L 0 78.08484649658203 C 0 86.57488250732422 5.144197940826416 93.44645690917969 11.50000286102295 93.44645690917969 C 17.85580825805664 93.44645690917969 23.0000057220459 86.57488250732422 23.0000057220459 78.08484649658203 L 23.0000057220459 47.36161041259766 C 23.0000057220459 38.87157440185547 17.85580825805664 32 11.50000286102295 32 Z M 16.4285774230957 62.72322845458984 L 6.571430683135986 62.72322845458984 L 6.571430683135986 47.36161041259766 C 6.571430683135986 43.72694778442383 8.779021263122559 40.77806854248047 11.50000286102295 40.77806854248047 C 14.22098541259766 40.77806854248047 16.4285774230957 43.72694778442383 16.4285774230957 47.36161041259766 L 16.4285774230957 62.72322845458984 Z M 30.77277946472168 58.649658203125 C 30.41340065002441 58.16960144042969 29.8076000213623 58.22447204589844 29.50983238220215 58.75937652587891 C 24.85849189758301 67.33171844482422 25.36161613464355 79.34668731689453 31.14242172241211 87.06863403320313 C 36.92322540283203 94.79059600830078 45.91786956787109 95.46266937255859 52.33528518676758 89.24944305419922 C 52.74599456787109 88.8516845703125 52.77680206298828 88.04246520996094 52.41742706298828 87.56240844726563 L 30.77277946472168 58.649658203125 Z M 54.36831665039063 56.04366302490234 C 48.5875129699707 48.32172012329102 39.59287261962891 47.6496467590332 33.17545700073242 53.86287689208984 C 32.76474380493164 54.2606201171875 32.73394012451172 55.06985473632813 33.09331512451172 55.54989624023438 L 54.73796463012695 84.46265411376953 C 55.09734344482422 84.94270324707031 55.70314788818359 84.88784790039063 56.00091171264648 84.35293579101563 C 60.65225219726563 75.76687622070313 60.15939331054688 63.765625 54.36831665039063 56.04367828369141 Z" fill="#f3f3f3" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_icym1k =
    '<svg viewBox="14.0 189.0 59.1 61.4" ><path transform="translate(13.99, 157.0)" d="M 11.50000286102295 32 C 5.144197940826416 32 0 38.87157440185547 0 47.36161041259766 L 0 78.08484649658203 C 0 86.57488250732422 5.144197940826416 93.44645690917969 11.50000286102295 93.44645690917969 C 17.85580825805664 93.44645690917969 23.0000057220459 86.57488250732422 23.0000057220459 78.08484649658203 L 23.0000057220459 47.36161041259766 C 23.0000057220459 38.87157440185547 17.85580825805664 32 11.50000286102295 32 Z M 16.4285774230957 62.72322845458984 L 6.571430683135986 62.72322845458984 L 6.571430683135986 47.36161041259766 C 6.571430683135986 43.72694778442383 8.779021263122559 40.77806854248047 11.50000286102295 40.77806854248047 C 14.22098541259766 40.77806854248047 16.4285774230957 43.72694778442383 16.4285774230957 47.36161041259766 L 16.4285774230957 62.72322845458984 Z M 30.77277946472168 58.649658203125 C 30.41340065002441 58.16960144042969 29.8076000213623 58.22447204589844 29.50983238220215 58.75937652587891 C 24.85849189758301 67.33171844482422 25.36161613464355 79.34668731689453 31.14242172241211 87.06863403320313 C 36.92322540283203 94.79059600830078 45.91786956787109 95.46266937255859 52.33528518676758 89.24944305419922 C 52.74599456787109 88.8516845703125 52.77680206298828 88.04246520996094 52.41742706298828 87.56240844726563 L 30.77277946472168 58.649658203125 Z M 54.36831665039063 56.04366302490234 C 48.5875129699707 48.32172012329102 39.59287261962891 47.6496467590332 33.17545700073242 53.86287689208984 C 32.76474380493164 54.2606201171875 32.73394012451172 55.06985473632813 33.09331512451172 55.54989624023438 L 54.73796463012695 84.46265411376953 C 55.09734344482422 84.94270324707031 55.70314788818359 84.88784790039063 56.00091171264648 84.35293579101563 C 60.65225219726563 75.76687622070313 60.15939331054688 63.765625 54.36831665039063 56.04367828369141 Z" fill="#f3f3f3" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_mbl5tg =
    '<svg viewBox="0.0 181.0 360.0 101.0" ><path transform="translate(0.0, 181.0)" d="M 0 0 L 360 0 L 360 101 L 0 101 L 0 0 Z" fill="#009acb" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
const String _svg_5k8r6o =
    '<svg viewBox="8.3 202.1 63.0 49.0" ><defs><filter id="shadow"><feDropShadow dx="3" dy="5" stdDeviation="23"/></filter></defs><path transform="translate(8.31, 170.13)" d="M 60.7072639465332 61.30960083007813 L 46.37496948242188 40.83332824707031 C 43.93706130981445 37.35684204101563 40.05607986450195 35.49834823608398 36.12043762207031 35.49834823608398 C 33.64973068237305 35.49834823608398 31.1462287902832 36.23081207275391 28.95976066589355 37.76134490966797 C 26.80608940124512 39.27000045776367 25.27556228637695 41.34714508056641 24.42283821105957 43.6429443359375 C 24.10580253601074 37.16006469726563 18.80361938476563 32 12.24421691894531 32 C 5.477100372314453 32 0 37.47710418701172 0 44.24421691894531 L 0 68.73265838623047 C 0 75.49977111816406 5.477100372314453 80.97686767578125 12.24421691894531 80.97686767578125 C 19.01133155822754 80.97686767578125 24.48843383789063 75.49977111816406 24.48843383789063 68.73265838623047 L 24.48843383789063 52.43253326416016 C 24.84920120239258 53.37271881103516 25.28649520874023 54.30197143554688 25.88777351379395 55.16561889648438 L 40.23100280761719 75.64189147949219 C 42.65798187255859 79.11837005615234 46.53895950317383 80.97686767578125 50.48553085327148 80.97686767578125 C 52.9671745300293 80.97686767578125 55.45973968505859 80.24440765380859 57.64620971679688 78.71387481689453 C 63.2982292175293 74.75637054443359 64.66477203369141 66.96161651611328 60.7072639465332 61.30959320068359 Z M 17.49173927307129 56.48843383789063 L 6.996695518493652 56.48843383789063 L 6.996695518493652 44.24421691894531 C 6.996695518493652 41.34714508056641 9.347147941589355 38.99669647216797 12.24421691894531 38.99669647216797 C 15.14128684997559 38.99669647216797 17.49173927307129 41.34714508056641 17.49173927307129 44.24421691894531 L 17.49173927307129 56.48843383789063 Z M 38.78792953491211 61.39705657958984 L 31.61631393432617 51.15345764160156 C 30.7745246887207 49.95089721679688 30.44655418395996 48.4859619140625 30.70893096923828 47.04290008544922 C 30.96037673950195 45.59983062744141 31.76936912536621 44.33168029785156 32.97192764282227 43.48988342285156 C 33.90117645263672 42.83394622802734 34.99440765380859 42.49504089355469 36.12043762207031 42.49504089355469 C 37.92427444458008 42.49504089355469 39.60785293579102 43.36962890625 40.63549423217773 44.84549713134766 L 47.80710601806641 55.08909606933594 L 38.78792953491211 61.39705657958984 Z" fill="#ff0000" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" filter="url(#shadow)"/></svg>';
const String _svg_o5l1gt =
    '<svg viewBox="8.3 511.1 63.0 49.0" ><path transform="translate(8.31, 479.13)" d="M 60.7072639465332 61.30960083007813 L 46.37496948242188 40.83332824707031 C 43.93706130981445 37.35684204101563 40.05607986450195 35.49834823608398 36.12043762207031 35.49834823608398 C 33.64973068237305 35.49834823608398 31.1462287902832 36.23081207275391 28.95976066589355 37.76134490966797 C 26.80608940124512 39.27000045776367 25.27556228637695 41.34714508056641 24.42283821105957 43.6429443359375 C 24.10580253601074 37.16006469726563 18.80361938476563 32 12.24421691894531 32 C 5.477100372314453 32 0 37.47710418701172 0 44.24421691894531 L 0 68.73265838623047 C 0 75.49977111816406 5.477100372314453 80.97686767578125 12.24421691894531 80.97686767578125 C 19.01133155822754 80.97686767578125 24.48843383789063 75.49977111816406 24.48843383789063 68.73265838623047 L 24.48843383789063 52.43253326416016 C 24.84920120239258 53.37271881103516 25.28649520874023 54.30197143554688 25.88777351379395 55.16561889648438 L 40.23100280761719 75.64189147949219 C 42.65798187255859 79.11837005615234 46.53895950317383 80.97686767578125 50.48553085327148 80.97686767578125 C 52.9671745300293 80.97686767578125 55.45973968505859 80.24440765380859 57.64620971679688 78.71387481689453 C 63.2982292175293 74.75637054443359 64.66477203369141 66.96161651611328 60.7072639465332 61.30959320068359 Z M 17.49173927307129 56.48843383789063 L 6.996695518493652 56.48843383789063 L 6.996695518493652 44.24421691894531 C 6.996695518493652 41.34714508056641 9.347147941589355 38.99669647216797 12.24421691894531 38.99669647216797 C 15.14128684997559 38.99669647216797 17.49173927307129 41.34714508056641 17.49173927307129 44.24421691894531 L 17.49173927307129 56.48843383789063 Z M 38.78792953491211 61.39705657958984 L 31.61631393432617 51.15345764160156 C 30.7745246887207 49.95089721679688 30.44655418395996 48.4859619140625 30.70893096923828 47.04290008544922 C 30.96037673950195 45.59983062744141 31.76936912536621 44.33168029785156 32.97192764282227 43.48988342285156 C 33.90117645263672 42.83394622802734 34.99440765380859 42.49504089355469 36.12043762207031 42.49504089355469 C 37.92427444458008 42.49504089355469 39.60785293579102 43.36962890625 40.63549423217773 44.84549713134766 L 47.80710601806641 55.08909606933594 L 38.78792953491211 61.39705657958984 Z" fill="#ffffff" stroke="none" stroke-width="1" stroke-miterlimit="4" stroke-linecap="butt" /></svg>';
