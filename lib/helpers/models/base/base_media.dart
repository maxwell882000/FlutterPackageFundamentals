import 'dart:io';
import 'dart:typed_data';

import 'package:path_provider/path_provider.dart';

import 'base_model.dart';

abstract class BaseMedia extends BaseModel {
  late String pathInApp;
  late String pathFromBack;

  BaseMedia.fromJson(Map<String, dynamic> map) : super.fromJson(map);
  Future<String> get localPath async {
    final directory = await getApplicationDocumentsDirectory();
    return directory.path;
  }

  String getPath();
  Future setMedia(Uint8List list) async {
    this.pathInApp = await this.localPath + getPath();
    File media = new File(this.pathInApp);

    media.createSync(recursive: true);
    await media.writeAsBytes(list);
    return media;
  }
}
