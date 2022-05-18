

import 'package:intl/intl.dart';

class PrintFormatHelper {

  static String comma(dynamic value, {int? decimal}){
    return _getNumberFormat(decimal: decimal).format(value);
  }

  static String appendPulMa(dynamic value, {int? decimal}){
    String strValue = _getNumberFormat(decimal: decimal).format(value);
    if(value > 0)
      return "+" + strValue;
    else if(value < 0)
      return "-" + strValue.replaceAll("-", "");
    return strValue;
  }

  static String appendUpDown(dynamic value, {int? decimal}){
    String strValue = _getNumberFormat(decimal: decimal).format(value);
    if(value > 0)
      return "▲ " + strValue;
    else if(value < 0)
      return "▼ " + strValue.replaceAll("-", "");
    return strValue;
  }

  static NumberFormat _getNumberFormat({int? decimal}){
    String format = "#,##0";
    if(decimal == null)
      return NumberFormat(format);
    else {
      if(decimal == 0)
        return NumberFormat(format);
      else {
        format += ".";
        for(int i = 0; i < decimal; i++)
          format += "0";
        return NumberFormat(format);
      }
    }
  }
}