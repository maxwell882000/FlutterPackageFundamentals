import 'package:flutter/material.dart';
import 'package:fundamental/helpers/static/style_handler.dart';
import 'package:fundamental/helpers/widgets/loading/providers/loading_provider.dart';
import 'package:fundamental/helpers/widgets/loading/widgets/loading.dart';
import 'package:get/get.dart';

class ScaffoldAuth<T extends LoadingProvider> extends StatelessWidget {
  final Widget prefix;
  final List<Widget> children;
  const ScaffoldAuth({Key? key, required this.prefix, required this.children})
      : super(key: key);
  List<Widget> insertMargin() {
    List<Widget> chldrnMrgn = [];
    children.forEach((element) {
      chldrnMrgn.add(StyleHandler.y_margin);
      chldrnMrgn.add(element);
    });
    return chldrnMrgn;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Loading<T>(
          child: Container(
            padding: EdgeInsets.symmetric(horizontal: 40),
            child: SizedBox(
              height: Get.height,
              child: Center(
                child: SingleChildScrollView(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      prefix,
                      StyleHandler.y_margin,
                      ...insertMargin()
                    ],
                  ),
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}

class LogoWidget {}
