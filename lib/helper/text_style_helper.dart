import 'package:flutter/material.dart';
import 'package:mume/view/resource/color.dart';
import 'package:mume/view/resource/sizes.dart';

class TextStyleHelper {
  // 메인 제목 텍스트
  static TextStyle getMainTitleTextStyle(){
    return const TextStyle(fontSize: Sizes.textLarge, fontWeight: FontWeight.w600);
  }

  // 회색 작은 텍스트
  static TextStyle getSubTitleTextStyle({dynamic value}){
    if(value != null){
      if(value >= 0)
        return const TextStyle(color: Colors.red);
      else 
         return const TextStyle(color: Colors.blue);
    }
    return const TextStyle(fontSize: Sizes.textSmall, color: Colors.black54);
  }

  // 값 출력 텍스트
  static TextStyle getValueTextStyle({dynamic value}){
    if(value != null){
      if(value >= 0)
        return const TextStyle(fontSize: Sizes.textDefault, fontWeight: FontWeight.w600, color: Colors.red);
      else 
         return const TextStyle(fontSize: Sizes.textDefault, fontWeight: FontWeight.w600, color: Colors.blue);
    }

    return const TextStyle(fontSize: Sizes.textDefault, fontWeight: FontWeight.w600);
  }
}