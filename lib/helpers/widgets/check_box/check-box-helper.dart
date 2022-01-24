import 'package:flutter/material.dart';
import 'package:fundamental/helpers/static/style_handler.dart';
import 'package:fundamental/helpers/widgets/text/text_title.dart';

import 'check-box.dart';

class CheckBoxHelper extends StatelessWidget {
  final Function(bool) onPressed;
  final String hintText;
  const CheckBoxHelper(
      {Key? key, required this.onPressed, required this.hintText})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(child: TextTitle(hintText)),
        StyleHandler.x_margin,
        CheckBoxCustom(onPressed: onPressed)
      ],
    );
  }
}
