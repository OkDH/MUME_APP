enum LoginType{
  apple,
  google,
  naver
}

extension ExLoginType on LoginType {
  String get providerId {
    switch (this) {
      case LoginType.apple: return "apple.com";
      case LoginType.google: return "google.com";
      case LoginType.naver: return "naver.com";
      default: return "";
    }
  }
}