import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mume/view/componont/button.dart';
import 'package:mume/view/resource/strings.dart';
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
      content: Text(alert.content),
      actions: [
        MyButton(
          text: Strings.ok,
          onPressed: (){
            Navigator.pop(context);
          },
        ),
        MyButton(
          text: Strings.cancel,
          onPressed: (){
            Navigator.pop(context);
          },
        ),
      ],
    );
  }
}
