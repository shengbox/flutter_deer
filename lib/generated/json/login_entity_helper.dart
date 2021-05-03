import 'package:flutter_deer/shop/models/login_entity.dart';

loginEntityFromJson(LoginEntity data, Map<String, dynamic> json) {
  if (json['message'] != null) {
    data.message = json['message'].toString();
  }
  if (json['success'] != null) {
    data.success = json['success'] as bool;
  }
  if (json['token'] != null) {
    data.token = json['token'].toString();
  }
  return data;
}

Map<String, dynamic> loginEntityToJson(LoginEntity entity) {
  final Map<String, dynamic> data = new Map<String, dynamic>();
  data['message'] = entity.message;
  data['success'] = entity.success;
  data['token'] = entity.token;
  return data;
}
