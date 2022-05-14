class PrintFormatHelper {

  static String appendPulMa(dynamic value){
    String strValue = value.toStringAsFixed(2);
    if(value > 0)
      return "+" + strValue;
    else if(value < 0)
      return "-" + strValue.replaceAll("-", "");
    return strValue;
  }

  static String appendUpDown(dynamic value){
    String strValue = value.toStringAsFixed(2);
    if(value > 0)
      return "▲" + strValue;
    else if(value < 0)
      return "▼" + strValue.replaceAll("-", "");
    return "-" + strValue;
  }
}