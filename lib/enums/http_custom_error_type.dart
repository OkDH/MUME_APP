enum HttpCustomErrorType{
  invalidToken,
  expiredToken,
}

extension ExHttpCustomErrorType on HttpCustomErrorType {
  int get statusCode {
    switch (this) {
      case HttpCustomErrorType.invalidToken: return 415;
      case HttpCustomErrorType.expiredToken: return 416;
      default: return 0;
    }
  }
}