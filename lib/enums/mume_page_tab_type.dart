import 'package:flutter/material.dart';
import 'package:mume/view/page/feed/feed_page.dart';
import 'package:mume/view/page/main/main_page.dart';
import 'package:mume/view/page/more/more_page.dart';
import 'package:mume/view/page/mume/account_page.dart';
import 'package:mume/view/page/mume/dash_board_page.dart';
import 'package:mume/view/page/mume/income_page.dart';
import 'package:mume/view/page/mume/mume_page.dart';
import 'package:mume/view/page/mume/order_list_page.dart';
import 'package:mume/view/page/vr/vr_page.dart';
import 'package:mume/view/resource/assets.dart';
import 'package:mume/view/resource/strings.dart';

enum MumePageTabType{
  dashBoard,
  account,
  orderList,
  income,
}

extension MumePageTabTypeExtension on MumePageTabType {
  String get label {
    switch (this) {
      case MumePageTabType.dashBoard: return Strings.dashBoard;
      case MumePageTabType.account: return Strings.account;
      case MumePageTabType.orderList: return Strings.orderList;
      case MumePageTabType.income: return Strings.income;
      default: return Strings.dashBoard;
    }
  }

  Widget get page {
    switch (this) {
      case MumePageTabType.dashBoard: return const DashBoardPage();
      case MumePageTabType.account: return const AccountPage();
      case MumePageTabType.orderList: return const OrderListPage();
      case MumePageTabType.income: return const IncomePage();
      default: return const DashBoardPage();
    }
  }
}