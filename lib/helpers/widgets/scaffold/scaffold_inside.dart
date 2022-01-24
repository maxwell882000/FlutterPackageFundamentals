import 'package:flutter/material.dart';
import 'package:fundamental/helpers/static/style_handler.dart';
import 'package:get/get.dart';

class ScaffoldInside extends StatelessWidget {
  final Widget body;
  final List<Widget>? actions;
  const ScaffoldInside({Key? key, this.actions,required this.body}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          icon: const Icon(
            Icons.arrow_back,
            color: Colors.black,
          ),
          onPressed: () {
            Get.back();
          },
        ),
        actions: actions,
      ),
      body: Container(
        margin: const EdgeInsets.symmetric(
            horizontal: StyleHandler.padding * 2,
            vertical: StyleHandler.padding),
        child: body,
      ),
    );
  }
}
