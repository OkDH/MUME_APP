enum InfiniteState {
  ing,
  stop,
  done,
  out,
}

extension InfiniteStateExtension on InfiniteState {
  String get label {
    switch (this) {
      case InfiniteState.ing: return "진행중";
      case InfiniteState.stop: return "매수중지";
      case InfiniteState.done: return "매도완료";
      case InfiniteState.out: return "원금소진";
    }
  }
}