import 'package:flutter/material.dart';
import 'package:fundamental/helpers/static/style_handler.dart';
import 'package:fundamental/helpers/widgets/text/text_title.dart';
import 'package:get/get_connect/http/src/utils/utils.dart';


class LabelWidget extends StatelessWidget {
  final String text;
  final int fontSize;
  final Widget child;
  const LabelWidget(
      {Key? key, this.fontSize = 10, required this.text, required this.child})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Align(
          alignment: Alignment.topLeft,
          child: TextTitle(text),
        ),
        StyleHandler.y_margin,
        child,
      ],
    );
  }
}
