import 'package:flutter/material.dart';
import 'package:mume/view/resource/strings.dart';

enum BottomMenuItemType{
  main,
  feed,
  mume,
  vr,
  more,
}

extension BottomMenuItemTypeExtension on BottomMenuItemType {
  Icon get icon {
    switch (this) {
      case BottomMenuItemType.main: return const Icon(Icons.show_chart);
      case BottomMenuItemType.feed: return const Icon(Icons.feed);
      case BottomMenuItemType.mume: return const Icon(IconData(codePoint));
      case BottomMenuItemType.vr: return const Icon(Icons.send_outlined);
      case BottomMenuItemType.more: return const Icon(Icons.send_outlined);
      default: return const Icon(Icons.main);
    }
  }

  String get label {
    switch (this) {
      case BottomMenuItemType.main: return Strings.main;
      case BottomMenuItemType.feed: return Strings.feed;
      case BottomMenuItemType.mume: return Strings.mume;
      case BottomMenuItemType.vr: return Strings.vr;
      case BottomMenuItemType.more: return Strings.more;
      default: return Strings.main;
    }
  }
}