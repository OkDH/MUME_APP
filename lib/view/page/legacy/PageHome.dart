import 'package:flutter/services.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mume/view/page/legacy/MyWebView.dart';
import 'package:mume/view/resource/color.dart';

class PageHome extends StatefulWidget {
  final String fcm;
  const PageHome({Key? key, required this.fcm}) : super(key: key);
  static final routeName = '/' + (PageHome).toString();

  @override
  State<PageHome> createState() => _PageHomeState();
}

class _PageHomeState extends State<PageHome> {

  @override
  Widget build(BuildContext context) {
    return AnnotatedRegion<SystemUiOverlayStyle>(
      value: SystemUiOverlayStyle.dark,
      child: MediaQuery.removePadding(
        context: context,
        removeTop: true,
        child: Container(
          padding: EdgeInsets.fromLTRB(0, MediaQuery.of(context).padding.top, 0, MediaQuery.of(context).padding.bottom),
          color: MyColor.onPrimary,
          child: Scaffold(
            body: Center(child: MyWebView(fcmToken: widget.fcm)),
          ),
        ),
      ),
    );
  }
}