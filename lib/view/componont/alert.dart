import 'dart:html';

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mume/viewmodel/base_bloc.dart';

class MyAlert extends StatelessWidget {
  final ShowAlert alert;

  const MyAlert(
    this.alert, {
    Key? key,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return AlertDialog(
      title: Text(alert.title),
      content: Center(
        child: Text(alert.content),
      ),
    );
  }
}
