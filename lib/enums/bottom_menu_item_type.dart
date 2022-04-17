import 'package:flutter/material.dart';
import 'package:mume/view/page/feed_page.dart';
import 'package:mume/view/page/main_page.dart';
import 'package:mume/view/page/more_page.dart';
import 'package:mume/view/page/mume_page.dart';
import 'package:mume/view/page/vr_page.dart';
import 'package:mume/view/resource/assets.dart';
import 'package:mume/view/resource/strings.dart';

enum BottomMenuItemType{
  main,
  feed,
  mume,
  vr,
  more,
}

extension BottomMenuItemTypeExtension on BottomMenuItemType {
  Widget get icon {
    switch (this) {
      case BottomMenuItemType.main: return const Icon(Icons.show_chart);
      case BottomMenuItemType.feed: return const Icon(Icons.feed);
      case BottomMenuItemType.mume: return const ImageIcon(AssetImage(Assets.logoPrimary), size: 40,);
      case BottomMenuItemType.vr: return const Icon(Icons.wb_sunny);
      case BottomMenuItemType.more: return const Icon(Icons.more_horiz_outlined);
      default: return const Icon(Icons.show_chart);
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

  Widget get page {
    switch (this) {
      case BottomMenuItemType.main: return const MainPage();
      case BottomMenuItemType.feed: return const FeedPage();
      case BottomMenuItemType.mume: return const MumePage();
      case BottomMenuItemType.vr: return const VrPage();
      case BottomMenuItemType.more: return const MorePage();
      default: return const MainPage();
    }
  }
}