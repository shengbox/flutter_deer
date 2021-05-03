import 'package:flutter_deer/generated/json/base/json_convert_content.dart';

class LoginEntity with JsonConvert<LoginEntity> {
  String? message;
  bool? success;
  String? token;
}
