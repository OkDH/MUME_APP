import 'package:flutter/material.dart';
import 'package:mume/view/resource/color.dart';

class LoadingWidget extends StatelessWidget {
  final Widget child;

  const LoadingWidget({
    required this.child,
    Key? key
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: [
        child,
        IgnorePointer(
          child: Container(
            height: MediaQuery.of(context).size.height,
            width: MediaQuery.of(context).size.width,
            color: MyColor.background.withOpacity(0.6),
            child: const Center(
              child: CircularProgressIndicator(),
            ),
          ),
        )
      ],
    );
  }
}
