
import 'package:fundamental/helpers/interface/serialize_json_interface.dart';

mixin MixJson {
  List<Map<String, dynamic>> toJsonList(
      List<SerializeJsonInterface> serialize) {
    return serialize.map((e) => e.toJson()).toList();
  }
}
