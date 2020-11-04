import 'package:flutter/material.dart';
import 'package:medical_reminder/Components/BackgroundSettings/Background_Animation.dart';
import 'package:medical_reminder/Types/BackgroundSettingEnum.dart';

class BackgroundSettingSetter extends StatelessWidget{
  /*
  Possible Enums
    Morning2Evening,
    Evening2Morning,
    Morning2Night,
    Night2Morning,
    Evening2Night,
    Night2Evening,
   */
  final BackgroundSetting setting;
  BackgroundSettingSetter(this.setting);

  @override
  Widget build(BuildContext context) {
    print(setting);
    if(setting == BackgroundSetting.Morning2Evening) return BackgroundAnimation('assets/Morning2Evening.riv');
    if(setting == BackgroundSetting.Evening2Morning) return BackgroundAnimation('assets/Evening2Morning.riv');

  }
  
}