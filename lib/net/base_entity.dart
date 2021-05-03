import 'package:flutter_deer/res/constant.dart';
import 'package:flutter_deer/generated/json/base/json_convert_content.dart';

class BaseEntity<T> {
  BaseEntity(this.code, this.message, this.data);

  BaseEntity.fromJson(Map<String, dynamic> json) {
    if (json.containsKey(Constant.success)) {
      final bool success = json[Constant.success] as bool;
      if (success) {
        code = 200;
      } else {
        code = 500;
      }
    }
    if (json.containsKey(Constant.code)) {
      code = json[Constant.code] as int;
    }
    message = json[Constant.message] as String;
    if (json.containsKey(Constant.data)) {
      data = _generateOBJ<T>(json[Constant.data] as Object);
    }
    if (json.containsKey(Constant.token)) {
      data = _generateOBJ<T>(json[Constant.token] as Object);
    }
  }

  late int code;
  late String message;
  T? data;

  T _generateOBJ<O>(Object json) {
    if (T.toString() == 'String') {
      return json.toString() as T;
    } else if (T.toString() == 'Map<dynamic, dynamic>') {
      return json as T;
    } else {
      /// List类型数据由fromJsonAsT判断处理
      return JsonConvert.fromJsonAsT<T>(json);
    }
  }
}
