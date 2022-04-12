import 'dart:io';

import 'package:flutter/foundation.dart';

class Config {
  ///url
  static const webViewUrl = "http://mume.ocko.co.kr";
  // static const testUrl = "http://mume.ocko.co.kr:8088/dev";
  static const testUrl = webViewUrl;

  ///광고
  static const _adAndroid = "ca-app-pub-2618229544885366/3895510849";
  static const _adiOS = "ca-app-pub-2618229544885366/5312534295";
  static const _adTestAndroid = "ca-app-pub-3940256099942544/6300978111";
  static const _adTestIOS = "ca-app-pub-3940256099942544/2934735716";

  static String getWebViewUrl(){
    if(kReleaseMode){
      return webViewUrl;
    }else{
      return testUrl;
    }
  }

  static String getAdUnitId(){
    if(Platform.isIOS){
      return kReleaseMode ? _adiOS : _adTestIOS;
    }else if(Platform.isAndroid){
      return kReleaseMode ? _adAndroid : _adTestAndroid;
    }else{
      return "";
    }
  }
}