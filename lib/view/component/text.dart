import 'package:flutter/material.dart';
import 'package:mume/view/resource/color.dart';

class MyText extends StatelessWidget {

  final String data;
  final Color? color;
  final double? fontSize;
  final FontWeight? fontWeight;

  const MyText(
    String this.data, {
    this.color,
    this.fontSize,
    this.fontWeight,
  });

  @override
  Widget build(BuildContext context){
    return Text(
      data, 
      style: color == null ? 
        TextStyle(color: MyColor.textColor, fontSize: fontSize, fontWeight: fontWeight, ) : 
        TextStyle(color: color, fontSize: fontSize, fontWeight: fontWeight, )
      );
  }

}