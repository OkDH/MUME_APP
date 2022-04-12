import 'package:adobe_xd/adobe_xd.dart';
import 'package:flutter/material.dart';

class iPhone12ProMax6 extends StatelessWidget {
  // iPhone12ProMax6({
    // Key key,
  // }) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xffffffff),
      body: Stack(
        children: <Widget>[
          Pinned.fromPins(
            Pin(size: 321.0, middle: 0.4882),
            Pin(size: 139.0, start: 85.0),
            child: Stack(
              children: <Widget>[
                Pinned.fromPins(
                  Pin(start: 0.0, end: 0.0),
                  Pin(start: 0.0, end: 0.0),
                  child: Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5.0),
                      color: const Color(0xff4e72df),
                      border: Border.all(
                          width: 1.0, color: const Color(0xffffffff)),
                    ),
                  ),
                ),
              ],
            ),
          ),
          Pinned.fromPins(
            Pin(size: 321.0, middle: 0.4882),
            Pin(size: 133.0, start: 85.0),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xffe3e6f0)),
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 321.0, middle: 0.4882),
            Pin(size: 133.0, middle: 0.3726),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5.0),
                color: const Color(0xffffffff),
                border: Border.all(width: 1.0, color: const Color(0xffe3e6f0)),
                boxShadow: [
                  BoxShadow(
                    color: const Color(0x29000000),
                    offset: Offset(0, 0),
                    blurRadius: 10,
                  ),
                ],
              ),
            ),
          ),
          Pinned.fromPins(
            Pin(size: 321.0, middle: 0.4882),
            Pin(size: 50.0, middle: 0.3409),
            child: Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topLeft: Radius.circular(5.0),
                  topRight: Radius.circular(5.0),
                ),
                color: const Color(0xfff8f8fc),
                border: Border.all(width: 1.0, color: const Color(0xffe3e6f0)),
              ),
            ),
          ),
        ],
      ),
    );
  }
}
