import 'package:flutter/material.dart';
import 'package:fundamental/helpers/widgets/button/abstracts/base_button.dart';

class RedButton extends BaseButton {
  RedButton({Key? key, String text = "", Function ?onPressed})
      : super(
            key: key,
            text: text,
            color: Color.fromRGBO(236, 19, 19, 1),
            onPressed: onPressed);
}
