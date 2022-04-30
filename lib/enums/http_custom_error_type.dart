enum HttpCustomErrorType{
  refreshToken,
  accessToken,
}

extension ExHttpCustomErrorType on HttpCustomErrorType {
  int get statusCode {
    switch (this) {
      case HttpCustomErrorType.refreshToken: return 403;
      case HttpCustomErrorType.accessToken: return 401;
      default: return 0;
    }
  }
}