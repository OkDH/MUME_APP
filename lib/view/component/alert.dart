import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:mume/view/component/button.dart';
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
          text: alert.btnPositiveText,
          onPressed: (){
            Navigator.pop(context, alert.popArgs);
            alert.btnPositiveEvent?.call();
          },
        ),

        alert.useBtnPositiveOnly
          ? Container()
          : MyButton(
            text: alert.btnNegativeText,
            onPressed: (){
              alert.btnNegativeEvent?.call();
              Navigator.pop(context, alert.popArgs);
            },
          ),
      ],
    );
  }
}
