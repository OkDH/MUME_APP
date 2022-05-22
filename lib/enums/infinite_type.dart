enum InfiniteType {
  infinite,
  tlp,
}

extension InfiniteTypeExtension on InfiniteType {
  String get label {
    switch (this) {
      case InfiniteType.infinite: return "무한매수";
      case InfiniteType.tlp: return "TLP";
    }
  }

  String get name {
    switch(this) {
      case InfiniteType.infinite: return "INFINITE";
      case InfiniteType.tlp: return "TLP";
    }
  }
}