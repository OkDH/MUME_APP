enum InfiniteVersion {
  v2_1,
  v2_1_SH,
  v2,
  v1,
}

extension InfiniteVersionExtension on InfiniteVersion {
  String get label {
    switch (this) {
      case InfiniteVersion.v2_1: return "v2.1";
      case InfiniteVersion.v2_1_SH: return "v2.1후반";
      case InfiniteVersion.v2: return "v2";
      case InfiniteVersion.v1: return "v1";
    }
  }
}