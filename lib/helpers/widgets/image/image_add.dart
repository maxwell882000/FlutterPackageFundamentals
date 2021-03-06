import 'package:flutter/material.dart';

import 'image_network.dart';

class ImageAdd extends ImageNetwork {
  ImageAdd(
      {required String path, required double size, required double indicatorSize,  BoxFit fit = BoxFit.cover})
      : super(
            indicator: Center(
              child: SizedBox(
                height: indicatorSize,
                width: indicatorSize,
                child: const CircularProgressIndicator(),
              ),
            ),
            fit:fit,
            path: path,
            size: size);
}
