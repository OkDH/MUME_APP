enum LoginType{
  apple,
  naver,
  // google,
}

extension ExLoginType on LoginType {
  String get providerId {
    switch (this) {
      case LoginType.apple: return "apple.com";
      case LoginType.naver: return "naver.com";
      // case LoginType.google: return "google.com";
      default: return "";
    }
  }
}